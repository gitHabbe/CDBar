local function charOption(params)
    local options = {
        get = function(info)
            local key = info.arg or info[#info]
            return CDBar.db.char[key]
        end,
        set = function(info, value)
            local key = info.arg or info[#info]
            DebugCDBar:Print("Setting db char key: " .. key .. " to: " .. tostring(value), "Char Option")
            CDBar.dbi.char[key] = value
            if params.rebuild then
                CDBar:BuildCooldownList()
            end
            CDBar:UpdateMainFramePosition()
            CDBar:UpdateCooldownFrames()
        end,
    }

    for k, v in pairs(params) do
        if k == "rebuild" then
            --pass
        else
            options[k] = v
        end
    end

    return options
end

local function classOption(params)
    local options = {
        get = function(info)
            local key = info.arg or info[#info]
            return CDBar.db.class[key]
        end,
        set = function(info, value)
            local key = info.arg or info[#info]
            if key == "esoFilipMode" then
                CDBar.db.class.durationSort = false
                CDBar.db.class.hideReadyCooldowns = false
            end
            CDBar.dbi.class[key] = value
            DebugCDBar:Print("Setting db class key: " .. key .. " to: " .. tostring(value), "Class Option")
            CDBar:UpdateMainFramePosition()
            CDBar:UpdateCooldownFrames()
        end,
    }

    for k, v in pairs(params) do
        --DebugCDBar:Print("param key: " .. k .. " param value " .. v)
        options[k] = v
    end

    return options
end

CDBar.ClassDefaults = {
    --rowWidth = 200,
    rowCount = 10,
    size = 32,
    xPadding = 2,
    yPadding = 2,
    positionX = 0,
    isCenterX = true,
    positionY = -340,
    durationSort = false,
    hideReadyCooldowns = false,
    esoFilipMod = false,
    showTooltip = false,
    darkBorders = false,
    spellList = 0,
    spellNameOrder = 99,
    ignoreSpell = "",
    ignoreSpells = {},
    debugMode = false,
}

CDBar.CharDefaults = {
    includeTrinket1 = false,
    includeTrinket2 = false,
    includeGloves = false,
    includeHead = false,
    ignoreItem = "",
    itemList = {},
}

local CDBarAceConfig = {
    type = "group",
    width = "half",
    args = {
        sizeGroup = {
            type = "group",
            name = "Size",
            order = 1,
            args = {
                rowCount = classOption({
                    type = "range",
                    name = "Icons per row",
                    step = 2,
                    order = 4,
                    min = 1,
                    max = 40,
                }),
                size = classOption({
                    type = "range",
                    name = "Icon size",
                    step = 1,
                    order = 5,
                    min = 14,
                    max = 100
                })
            }
        },
        positionGroup = {
            type = "group",
            name = "Position",
            order = 2,
            args = {
                positionX = classOption({
                    type = "range",
                    name = "X offset",
                    step = 1,
                    order = 1,
                    min = -800,
                    max = 800,
                    disabled = function() return CDBar.db.class.isCenterX end
                }),
                isCenterX = classOption({
                    type = "toggle",
                    order = 2,
                    name = "Horizontal center"
                }),
                positionY = classOption({
                    type = "range",
                    name = "Y offset",
                    step = 1,
                    order = 3,
                    min = -800,
                    max = 800,
                }),
                xPadding = classOption({
                    type = "range",
                    name = "Aura X padding",
                    min = 0,
                    max = 5,
                    order = 4,
                }),
                yPadding = classOption({
                    type = "range",
                    name = "Aura Y padding",
                    min = 0,
                    max = 5,
                    order = 5,
                }),
                showTooltip = classOption({
                    type = "toggle",
                    name = "Show tooltip on hover",
                    order = 8,
                }),
            }
        },
        orderGroup = {
            type = "group",
            name = "Order",
            order = 3,
            args = {
                spellList = classOption({
                    type = "select",
                    name = "Spell order",
                    order = 1,
                    values = function()
                        table.sort(CDBar.db.class.cooldownList, function(a, b)
                            local number = tonumber(CDBar:stringSplit(a)[1])
                            local number2 = tonumber(CDBar:stringSplit(b)[1])
                            return number < number2
                        end)
                        return CDBar.db.class.cooldownList
                    end,
                }),
                spellNameOrder = classOption({
                    type = "range",
                    name = "New priority number",
                    step = 1,
                    min = 1,
                    max = 200,
                    order = 2
                }),
                confirmSpellNumber = {
                    type = "execute",
                    name = "Apply number",
                    order = 3,
                    func = function(info)
                        --for i, cooldown in pairs(CDBar.db.cooldownList) do
                        local spellListKey = CDBar.db.class.spellList
                        local oldValue = CDBar.db.class.cooldownList[spellListKey]
                        local spellAsTable = CDBar:stringSplit(oldValue)
                        local newNumber = CDBar.db.class.spellNameOrder
                        local spellName = table.concat(CDBar:tableSlice(spellAsTable, 2, #spellAsTable), " ")
                        local newValue = newNumber .. " " .. spellName
                        for key, value in pairs(CDBar.db.class.cooldownList) do
                            if value == oldValue then
                                CDBar.db.class.cooldownList[key] = newValue
                            end
                        end
                        DebugCDBar:Print("old:", oldValue, "new:", newValue)
                        CDBar:BuildCooldownList()
                        CDBar:UpdateCooldownFrames()
                    end
                },
                someHeader = {
                    type = "header",
                    name = "Sorting & Visibility",
                    order = 4,
                },
                durationSort = classOption({
                    type = "toggle",
                    name = "Sort cooldown CDs first",
                    order = 5,
                    disabled = function() return CDBar.db.class.esoFilipMode end,
                }),
                hideReadyCooldowns = classOption({
                    type = "toggle",
                    name = "Hide ready cooldowns",
                    disabled = function() return CDBar.db.class.esoFilipMode end,
                    order = 6
                }),
                esoFilipMode = classOption({
                    type = "toggle",
                    name = "EsoFilip mode",
                    order = 7,
                }),
                darkBorders = classOption({
                    type = "toggle",
                    name = "Dark borders",
                    order = 8,
                }),
                resetHeader = {
                    type = "header",
                    name = "Reset",
                    order = 9,
                },
                resetSpellNumbers = {
                    type = "execute",
                    name = "Reset all spell numbers",
                    order = 10,
                    confirm = true,
                    confirmText = "Are you sure you want to reset spell order list?",
                    func = function(info)
                        CDBar.db.class.cooldownList = {}
                        CDBar:BuildCooldownList()
                        CDBar:UpdateCooldownFrames()
                    end
                }
            },
        },
        ignoreSpellListGroup = {
            type = "group",
            name = "Ignore spells",
            order = 4,
            args = {
                ignoreSpell = classOption({
                    type = "input",
                    name = "Add to ignore list",
                    order = 6
                }),
                confirmIgnoreSpell = {
                    type = "execute",
                    name = "Add",
                    order = 7,
                    func = function(info)
                        if CDBar.db.class.ignoreSpell == "" or CDBar.db.class.ignoreSpell == nil then return end
                        table.insert(CDBar.db.class.ignoreSpellList, CDBar:removeBrackets(CDBar.db.class.ignoreSpell))
                        CDBar.db.class.ignoreSpell = ""
                        CDBar:BuildCooldownList()
                        CDBar:UpdateCooldownFrames()
                    end
                },
                ignoreSpells = classOption({
                    type = "select",
                    name = "Spell list",
                    order = 8,
                    values = function()
                        return CDBar.db.class.ignoreSpellList
                    end
                }),
                confirmRemoveIgnoreSpell = {
                    type = "execute",
                    name = "Remove",
                    order = 9,
                    func = function(info)
                        CDBar.db.class.ignoreSpellList = CDBar:tableFilter(CDBar.db.class.ignoreSpellList, function(_, idx)
                            return idx ~= CDBar.db.class.ignoreSpells
                        end)
                        CDBar:BuildCooldownList()
                        CDBar:UpdateCooldownFrames()
                    end
                },
            }
        },
        characterGroup = {
            type = "group",
            name = "Character specific",
            order = 5,
            args = {
                headerForInclude = {
                    type = "header",
                    name = "Include items on bar",
                    order = 1
                },
                includeTrinket1 = charOption({
                    type = "toggle",
                    name = "Trinket 1",
                    order = 2,
                    rebuild = true
                }),
                includeTrinket2 = charOption({
                    type = "toggle",
                    name = "Trinket 2",
                    order = 3,
                    rebuild = true
                }),
                includeGloves = charOption({
                    type = "toggle",
                    name = "Gloves",
                    order = 4,
                    rebuild = true

                }),
                includeHead = charOption({
                    type = "toggle",
                    name = "Head",
                    order = 5,
                    rebuild = true
                }),
                ignoreItem = charOption({
                    type = "input",
                    name = "Add to ignore list",
                    order = 6
                }),
                confirmIgnoreItem = {
                    type = "execute",
                    name = "Add",
                    order = 7,
                    func = function(info)
                        if CDBar.db.char.ignoreItem == "" or CDBar.db.char.ignoreItem == nil then return end
                        local newItem = CDBar:stringTrim(CDBar.db.char.ignoreItem)
                        newItem = CDBar:removeBrackets(newItem)
                        table.insert(CDBar.db.char.ignoreItems, newItem)
                        CDBar.db.char.ignoreItem = ""
                        CDBar:BuildCooldownList()
                        CDBar:UpdateCooldownFrames()
                    end
                },
                itemList = charOption({
                    type = "select",
                    name = "Item list",
                    order = 8,
                    values = function()
                        return CDBar.db.char.ignoreItems
                    end
                }),
                confirmRemoveIgnoreItem = {
                    type = "execute",
                    name = "Remove",
                    order = 9,
                    func = function(info)
                        CDBar.db.char.ignoreItems = CDBar:tableFilter(CDBar.db.char.ignoreItems, function(_, idx)
                            return idx ~= CDBar.db.char.itemList
                        end)
                        CDBar:BuildCooldownList()
                        CDBar:UpdateCooldownFrames()
                    end
                },
            },
        },
        debugGroup = {
            type = "group",
            name = "Developer mode",
            order = 6,
            args = {
                debugMode = classOption({
                    type = "toggle",
                    name = "Debug mode",
                    order = 1
                })
            }
        }
    }
}

function CDBar:LoadConfig()
    --CDBar:BuildCooldownList()
    LibStub("AceConfig-3.0"):RegisterOptionsTable("CDBar", CDBarAceConfig)
    self.options = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("CDBar", "CDBar")

    if (self.isClassic or self.isWotlk) and self.db.class.debugMode then
        InterfaceOptionsFrame_OpenToCategory(self.options)
    end
end

function CDBar:CreateSlashCommands()
    self:RegisterChatCommand("cdbar", "SlashCommand")
    self:RegisterChatCommand("cdb", "SlashCommand")
end


function CDBar:SlashCommand(msg)
    if self.isClassic or self.isWotlk or self.isClassic60 then
        InterfaceOptionsFrame_OpenToCategory(self.options)
    elseif self.isTBC then
        InterfaceOptionsFrame_OpenToFrame("CDBar")
    end
end

function CDBar:Throttle()
    --if not aura_env.last or aura_env.last < GetTime() - aura_env.config["throttle"] then
    --    aura_env.last = GetTime()
    --end
end