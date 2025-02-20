local GetItemCooldown = GetItemCooldown or (C_Container and C_Container.GetItemCooldown) or nil
local tempSpells = {}
local tempIcons = {}
local defaultSpellPadding = 30

CDBar = LibStub("AceAddon-3.0"):NewAddon("CDBar", "AceEvent-3.0", "AceConsole-3.0")

CDBar.buildInfo = select(2, GetBuildInfo())
CDBar.build = tonumber(CDBar.buildInfo)
CDBar.tocVersion = select(4, GetBuildInfo())
CDBar.isClassic = CDBar.build > 40000 and CDBar.tocVersion > 20000 and CDBar.tocVersion < 40000
CDBar.isClassic60 = CDBar.build > 40000 and CDBar.tocVersion < 20000
CDBar.isTBC = CDBar.build > 5000 and CDBar.build < 10000
CDBar.isWotlk = CDBar.build > 9000 and CDBar.build < 13000

if CDBar.isTBC or CDBar.isWotlk then
    LibStub("AceTimer-3.0"):Embed(CDBar)
end

function CDBar:OnEnable()
    self:DatabaseInitialize()
    self:LoadConfig()
    self:CreateSlashCommands()
    self:RegisterEvent("SPELL_UPDATE_COOLDOWN")
    self:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
    self:RegisterEvent("PET_BAR_UPDATE")
    self:RegisterEvent("SPELLS_CHANGED")
    self:CreateMainFrame()
    self:BuildCooldownList()
    self:UpdateCooldownFrames()
    self:UpdateMainFramePosition()
end

function CDBar:SPELL_UPDATE_COOLDOWN()
    self:UpdateCooldownFrames()
end

function CDBar:PLAYER_EQUIPMENT_CHANGED()
    DebugCDBar:Print("CHANGED EQUIPMENT")
    self:BuildCooldownList()
    self:UpdateCooldownFrames()
end

function CDBar:PET_BAR_UPDATE()
    self:BuildCooldownList()
    self:UpdateCooldownFrames()
end

function CDBar:SPELLS_CHANGED()
    DebugCDBar:Print("CHANGED SPECIALIZATION")
    self:BuildCooldownList()
    self:UpdateCooldownFrames()
end

function CDBar:BuildCooldownList()
    DebugCDBar:Print("Building CD list")
    self.cooldownList = {}

    if self.isTBC or self.isWotlk or self.isClassic60 then self.spellCache = {} end

    self:_LoopPlayerSpellBook()
    self:_LoopPetSpellBook()


    if self.db.char.includeTrinket1 then
        self:_AddItemSlot(13, "Trinket 1")
    end
    if self.db.char.includeTrinket2 then
        self:_AddItemSlot(14, "Trinket 2")
    end
    if self.db.char.includeHead then
        self:_AddItemSlot(1, "Head")
    end
    if self.db.char.includeGloves then
        self:_AddItemSlot(10, "Gloves")
    end
end

function CDBar:_LoopPlayerSpellBook()
    local spellBookIndex = 1
    while true do
        local spellName, _ = self:_GetSpellBookItemName(spellBookIndex, BOOKTYPE_SPELL)
        if not spellName then do break end end
        self:_AddSpellCooldown(spellName, spellBookIndex)
        spellBookIndex = spellBookIndex + 1
    end
end

function CDBar:_GetSpellBookItemName(spellIndex, bookType)
    if self.isClassic then
        return GetSpellBookItemName(spellIndex, bookType)
    elseif self.isTBC or self.isWotlk then
        local spellName, subSpellName = GetSpellName(spellIndex, bookType)
        if self.GCDReference.validSpells[spellName] then
            self.GCDReference.spellBookIndex = spellIndex
        end
        if self.GCDReference.petValidPetSpells[spellName] then
            self.GCDReference.petSpellBookIndex = spellIndex
        end

        return spellName, subSpellName
    elseif self.isClassic60 then
        local spellName, subSpellName = GetSpellBookItemName(spellIndex, bookType)
        if self.GCDReference.validSpells[spellName] then
            self.GCDReference.spellBookIndex = spellIndex
        end
        if self.GCDReference.petValidPetSpells[spellName] then
            self.GCDReference.petSpellBookIndex = spellIndex
        end

        return spellName, subSpellName
    end
end

function CDBar:_LoopActionBar()
    for i = 1, 12 do
        buildMacroHotkeyList(i)
    end
    for i = 60, 71 do
        buildMacroHotkeyList(i)
    end
    for i = 1, 12 do
        buildAbilityHotkeyList(i)
    end
    for i = 60, 71 do
        buildAbilityHotkeyList(i)
    end
end

function buildMacroHotkeyList(actionBarIndex)
    local command, category, bind = GetBinding(actionBarIndex + defaultSpellPadding)
    if bind == nil then return end
    local actionType, id, subType = GetActionInfo(actionBarIndex)
    if actionType == "macro" then
        local name, icon, body = GetMacroInfo(id) --name, rank = GetMacroSpell(slot)
        if not icon then return end
        tempIcons[icon] = {
            ["name"] = name,
            ["bind"] = bind,
        }
    end
end

function buildAbilityHotkeyList(actionBarIndex, type)
    local command, category, bind = GetBinding(actionBarIndex + defaultSpellPadding)
    DebugCDBar:Print(command .. "    " .. category)
    if bind == nil then return end
    local actionType, abilityId, subType = GetActionInfo(actionBarIndex)
    local name, _, icon, _, _, _, spellId = GetSpellInfo(abilityId)
    local macroExists = tempIcons[icon]
    if macroExists then return end
    if actionType == "spell" then
        --DebugCDBar:Print(name)
        tempSpells[abilityId] = {
            ["name"] = name,
            ["bind"] = bind,
        }
        --DebugCDBar:Print("Ability " .. macroExists.spellName .. " on bind " .. bind)
    end
end

function addFrameHotkey(frame, cooldown)
    local isMacro = tempIcons[cooldown.iconTexture]
    local isSpell = tempSpells[cooldown.spellId]
    frame.hotkey:SetText()

    if isMacro then
        local newHotkey = styleModifierText(isMacro.bind)
        frame.hotkey:SetText(newHotkey)
    elseif isSpell then
        local newHotkey = styleModifierText(isSpell.bind)
        --local oldFont, oldSize, oldMono = frame.hotkey:GetFont()
        --DebugCDBar:Print(oldFont .. oldSize .. oldMono)
        --frame.hotkey:SetFont("Arial Narrow", oldSize, oldMono)
        frame.hotkey:SetText(newHotkey)
    end
end

function styleModifierText(bind)
    local modifiers = {
        ["SHIFT%-"] = "s",
        ["CTRL%-"] = "c",
        ["ALT%-"] = "a",
        ["META%-"] = "m"
    }
    local newHotkey = bind
    for modifier, modifierShort in pairs(modifiers) do
        newHotkey = newHotkey:gsub(modifier, modifierShort)
    end
    return newHotkey
end

function CDBar:_AddSpellCooldown(spellName, spellBookIndex)
    local name, _, icon, _, _, _, spellId = GetSpellInfo(spellName)
    local cooldownMS = self:_GetSpellBaseCooldown(spellId, name)
    local start, duration, enabled = self:_GetSpellCooldown(spellId, spellBookIndex, "")
    if cooldownMS > 2000 then
        for _, ignoreSpellName in pairs(self.db.class.ignoreSpellList) do
            if string.lower(ignoreSpellName) == string.lower(spellName) then
                return
            end
        end
        local newCooldown = {}
        local dbSpell = self:IsCooldownInDB(self.db.class.cooldownList, spellName)
        if dbSpell then
            newCooldown.dbSpell = dbSpell
        else
            newCooldown.dbSpell = self:AddCooldownToDB(self.db.class.cooldownList, spellName)
        end
        newCooldown.spellId = spellId
        newCooldown.iconTexture = icon
        newCooldown.spellName = name
        newCooldown.start = start
        newCooldown.duration = duration
        newCooldown.enabled = enabled
        newCooldown.type = "spell"
        newCooldown.spellBookIndex = spellBookIndex
        --tempSpells[spellId] = {
        --    ["spellId"] = spellId,
        --    ["spellName"] = name,
        --    ["iconTexture"] = icon,
        --}
        --tempIcons[icon] = {
        --    ["spellId"] = spellId,
        --    ["spellName"] = name,
        --    ["iconTexture"] = icon,
        --}
        DebugCDBar:Print("Added SPELL: " .. spellName .. " id: " .. spellId .. " baseCD: " .. cooldownMS / 1000 .. " idx: " .. spellBookIndex)
        table.insert(self.cooldownList, newCooldown)
    end
end

function CDBar:_GetSpellBaseCooldown(spellId, spellName)
    if self.isClassic or self.isClassic60 then
        if spellId == nil then return 0 end
        return GetSpellBaseCooldown(spellId)
    elseif self.isTBC or self.isWotlk then
        local spellData
        if spellName and self.spellCache[string.lower(spellName)] ~= nil then return 0 end
        --if self.spellCache[string.lower(spellName)] == true then return 0 end
        if self.isTBC then
            for _, value in pairs(LCT_SpellData_TBC) do
                if type(value) == "table" then
                    if string.lower(value.name) == string.lower(spellName) then
                        spellData = value
                    end
                elseif type(value) == "number" then
                    if string.lower(LCT_SpellData_TBC[value].name) == string.lower(spellName) then
                        spellData = LCT_SpellData_TBC[value]
                    end
                end
            end
        elseif self.isWotlk then
            for _, value in pairs(LCT_SpellData_Wotlk) do
                if type(value) == "table" then
                    if string.lower(value.name) == string.lower(spellName) then
                        spellData = value
                    end
                elseif type(value) == "number" then
                    if string.lower(LCT_SpellData_Wotlk[value].name) == string.lower(spellName) then
                        spellData = LCT_SpellData_Wotlk[value]
                    end
                end
            end
        end
        if spellData == nil then
            self.spellCache[string.lower(spellName)] = false
            return 0
        end
        self.spellCache[string.lower(spellName)] = true
        return spellData.cooldown * 1000 or 0
    end
end

function CDBar:_GetSpellCooldown(spellId, spellBookIndex, type)
    --DebugCDBar:Print("spellId: " .. spellId)
    if spellId == nil then return end
    if type == "item" then return GetItemCooldown(spellId) end
    if self.isClassic or self.isClassic60 then
        return GetSpellCooldown(spellId)
    elseif self.isTBC or self.isWotlk then
        if type == "pet" then
            return GetSpellCooldown(spellBookIndex, BOOKTYPE_PET)
        end
        return GetSpellCooldown(spellBookIndex, BOOKTYPE_SPELL)
    end
end

function CDBar:_LoopPetSpellBook()
    local spellBookIndex = 1
    while true do
        local spellName, _ = self:_GetSpellBookItemName(spellBookIndex, BOOKTYPE_PET)
        if not spellName then do break end end
        self:_AddPetSpellCooldown(spellName, spellBookIndex)
        spellBookIndex = spellBookIndex + 1
    end
end

function CDBar:_AddPetSpellCooldown(spellName, spellBookIndex)
    local name, _, icon, _, _, _, spellId = GetSpellInfo(spellName)
    local cooldownMS = self:_GetSpellBaseCooldown(spellId, name)
    local start, duration, enabled = self:_GetSpellCooldown(spellId, spellBookIndex, "")

    if cooldownMS > 2000 then
        for _, ignoreSpellName in pairs(self.db.class.ignoreSpellList) do
            if string.lower(ignoreSpellName) == string.lower(spellName) then
                return
            end
        end
        local newCooldown = {}
        local dbSpell = self:IsCooldownInDB(self.db.class.cooldownList, spellName)
        if dbSpell then
            newCooldown.dbSpell = dbSpell
        else
            newCooldown.dbSpell = self:AddCooldownToDB(self.db.class.cooldownList, spellName)
        end
        newCooldown.spellId = spellId
        newCooldown.iconTexture = icon
        newCooldown.spellName = name
        newCooldown.start = start
        newCooldown.duration = duration
        newCooldown.enabled = enabled
        newCooldown.type = "pet"
        newCooldown.spellBookIndex = spellBookIndex
        table.insert(self.cooldownList, newCooldown)
        --CDBar:Print("Added pet CD: " .. spellName .. " id: " .. spellId)
    end
end

function CDBar:_AddItemSlot(slotId, name)
    local itemLink = GetInventoryItemLink("player", slotId)
    local itemName, icon
    if itemLink then
        itemName, _, _, _, _, _, _, _, _, icon = GetItemInfo(itemLink)
    else
        return
    end
    for _, item in pairs(self.db.char.ignoreItems) do
        if string.lower(item) == string.lower(itemName) then
            return
        end
    end
    local _, _, itemID = string.find(itemLink, "item:(%d+)");
    local newCooldown = {}
    local dbSpell = self:IsCooldownInDB(self.db.class.cooldownList, name)
    if dbSpell then
        newCooldown.dbSpell = dbSpell
    else
        newCooldown.dbSpell = self:AddCooldownToDB(self.db.class.cooldownList, name)
    end
    newCooldown.spellId = itemID
    newCooldown.spellName = itemName
    newCooldown.iconTexture = icon
    newCooldown.start = 0
    newCooldown.duration = 0
    newCooldown.type = "item"
    newCooldown.slot = name
    newCooldown.slotId = slotId
    --CDBar:Print("Added ITEM: " .. itemName .. " id: " .. itemID .. " baseCD: " .. 0)
    table.insert(self.cooldownList, newCooldown)
end

function CDBar:UpdateCooldownFrames()
    self:_UpdateCooldownData()
    --DebugCDBar:Print("Upading CDs")

    if self.db.class.durationSort then
        self:_SortByCooldown()
    else
        self:_SortByIndex()
    end
    local readyCooldowns = {}
    if self.db.class.hideReadyCooldowns then
        readyCooldowns = CDBar:tableFilter(self.cooldownList, function(cd)
            return cd.isOnCooldown
        end)
    end
    local spellNum = 1
    local targetCooldownTable = self.cooldownList
    if self.db.class.hideReadyCooldowns then targetCooldownTable = readyCooldowns end
    local cooldownCount = #targetCooldownTable
    for i, cooldown in pairs(targetCooldownTable) do
        self:HideFrame(i)
        local frame = self:_CreateCooldownFrame(spellNum, cooldown)
        --addFrameHotkey(frame, cooldown)
        CDBar:tableMerge(frame, cooldown)
        if cooldown.isOnCooldown then
            frame.hidden = false
            self:SetFrameCooldown(frame.cooldown, cooldown.start, cooldown.duration)
            self:_CreateCooldownTimer(cooldown)
        end
        if self.db.class.esoFilipMode and not cooldown.isOnCooldown then
            frame.cooldown:SetAlpha(0)
            frame:SetAlpha(0)
        end
        spellNum = spellNum + 1
    end
    self:HideLeftoverFrames(spellNum)

    local cooldownFrameHeight = self:UpdateAuraPositions(cooldownCount)
end

function CDBar:_UpdateCooldownData()
    local GCD
    if self.isClassic then
        _, GCD = GetSpellCooldown(61304)
    elseif self.isTBC or self.isWotlk or self.isClassic60 then
        _, GCD = GetSpellCooldown(self.GCDReference.spellBookIndex, BOOKTYPE_SPELL)
    end
    for _, cooldown in pairs(self.cooldownList) do
        local start, duration, enabled = self:_GetSpellCooldown(cooldown.spellId, cooldown.spellBookIndex, cooldown.type)

        if duration == nil or start == nil or GCD == nil or enabled == nil then return end
        local isOnCooldown = duration > 0 and start > 0 and enabled == 1 and duration ~= GCD
        if self.isClassic then
            if cooldown.type == "pet" then
                if duration == 1.5 then
                    isOnCooldown = false
                end
            end
        elseif self.isTBC or self.isWotlk or self.isClassic60 then
            if cooldown.type == "pet" then
                if duration == 1.5 then
                    isOnCooldown = false
                end
            end
        end
        if isOnCooldown then
            local remainingCooldown = start + duration - GetTime()
            cooldown.start = start
            cooldown.duration = duration
            cooldown.remainingCooldown = remainingCooldown
            cooldown.isOnCooldown = true
        else
            cooldown.isOnCooldown = false
            cooldown.remainingCooldown = 100000
        end
    end
    --self:_LoopActionBar()
end

function CDBar:_SortByCooldown()
    table.sort(self.cooldownList, function(a, b)
        local number = tonumber(CDBar:stringSplit(a.dbSpell)[1]) or -1
        local number2 = tonumber(CDBar:stringSplit(b.dbSpell)[1]) or -1
        if a.isOnCooldown == b.isOnCooldown then
            if a.isOnCooldown then
                return a.remainingCooldown < b.remainingCooldown
            else
                if number == number2 then
                    local name = CDBar:tableJoin(CDBar:stringSplit(a.dbSpell), 2)
                    local name2 = CDBar:tableJoin(CDBar:stringSplit(b.dbSpell), 2)
                    return name > name2
                end
                return number < number2
            end
        end
        return a.isOnCooldown
    end)
end

function CDBar:_SortByIndex()
    table.sort(self.cooldownList, function(a, b)
        local number = tonumber(CDBar:stringSplit(a.dbSpell)[1]) or -1
        local number2 = tonumber(CDBar:stringSplit(b.dbSpell)[1]) or -1
        if number == number2 then
            local name = CDBar:tableJoin(CDBar:stringSplit(a.dbSpell), 2)
            local name2 = CDBar:tableJoin(CDBar:stringSplit(b.dbSpell), 2)
            return name > name2
        end
        return number < number2
    end)
end

function CDBar:_CreateCooldownTimer(cooldown)
    if self.isClassic or self.isClassic60 then
        if cooldown.timer == nil then
            cooldown.timer = C_Timer.NewTimer(cooldown.remainingCooldown + 0.1, function()
                cooldown.timer:Cancel()
                cooldown.timer = nil
                self:UpdateCooldownFrames()
            end, 1)
        end
    elseif self.isTBC or self.isWotlk then
        if cooldown.timerId == nil then
            cooldown.timerId = CDBar:ScheduleTimer(function()
                self:UpdateCooldownFrames()
                cooldown.timerId = nil
            end, cooldown.remainingCooldown + 0.1)
        else
            local frameTimer = CDBar:numberRound(CDBar:TimeLeft(cooldown.timerId), 1)
            local remainingTimer = CDBar:numberRound(cooldown.remainingCooldown, 1)
            if frameTimer ~= remainingTimer then
                CDBar:CancelTimer(cooldown.timerId)
                cooldown.timerId = CDBar:ScheduleTimer(function()
                    self:UpdateCooldownFrames()
                    cooldown.timerId = nil
                end, cooldown.remainingCooldown + 0.1)
            end
        end
    end
end

