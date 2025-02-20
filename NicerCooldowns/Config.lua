local function charOption(params)
    local options = {
        get = function(info)
            local key = info.arg or info[#info]
            return NicerCooldowns.db.char[key]
        end,
        set = function(info, value)
            local key = info.arg or info[#info]
            DebugNicerCooldowns:Print("Setting db char key: " .. key .. " to: " .. tostring(value), "Char Option")
            NicerCooldowns.dbi.char[key] = value
            if params.rebuild then
                NicerCooldowns:BuildCooldownList()
            end
            NicerCooldowns:UpdateMainFramePosition()
            NicerCooldowns:UpdateCooldownFrames()
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
            return NicerCooldowns.db.class[key]
        end,
        set = function(info, value)
            local key = info.arg or info[#info]
            if key == "esoFilipMode" then
                NicerCooldowns.db.class.durationSort = false
                NicerCooldowns.db.class.hideReadyCooldowns = false
            end
            NicerCooldowns.dbi.class[key] = value
            DebugNicerCooldowns:Print("Setting db class key: " .. key .. " to: " .. tostring(value), "Class Option")
            NicerCooldowns:UpdateMainFramePosition()
            NicerCooldowns:UpdateCooldownFrames()
        end,
    }

    for k, v in pairs(params) do
        --DebugNicerCooldowns:Print("param key: " .. k .. " param value " .. v)
        options[k] = v
    end

    return options
end

NicerCooldowns.ClassDefaults = {
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

NicerCooldowns.CharDefaults = {
    includeTrinket1 = false,
    includeTrinket2 = false,
    includeGloves = false,
    includeHead = false,
    ignoreItem = "",
    itemList = {},
}

local NicerCooldownsAceConfig = {
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
                    disabled = function() return NicerCooldowns.db.class.isCenterX end
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
                        table.sort(NicerCooldowns.db.class.cooldownList, function(a, b)
                            local number = tonumber(NicerCooldowns:stringSplit(a)[1])
                            local number2 = tonumber(NicerCooldowns:stringSplit(b)[1])
                            return number < number2
                        end)
                        return NicerCooldowns.db.class.cooldownList
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
                        --for i, cooldown in pairs(NicerCooldowns.db.cooldownList) do
                        local spellListKey = NicerCooldowns.db.class.spellList
                        local oldValue = NicerCooldowns.db.class.cooldownList[spellListKey]
                        local spellAsTable = NicerCooldowns:stringSplit(oldValue)
                        local newNumber = NicerCooldowns.db.class.spellNameOrder
                        local spellName = table.concat(NicerCooldowns:tableSlice(spellAsTable, 2, #spellAsTable), " ")
                        local newValue = newNumber .. " " .. spellName
                        for key, value in pairs(NicerCooldowns.db.class.cooldownList) do
                            if value == oldValue then
                                NicerCooldowns.db.class.cooldownList[key] = newValue
                            end
                        end
                        DebugNicerCooldowns:Print("old:", oldValue, "new:", newValue)
                        NicerCooldowns:BuildCooldownList()
                        NicerCooldowns:UpdateCooldownFrames()
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
                    disabled = function() return NicerCooldowns.db.class.esoFilipMode end,
                }),
                hideReadyCooldowns = classOption({
                    type = "toggle",
                    name = "Hide ready cooldowns",
                    disabled = function() return NicerCooldowns.db.class.esoFilipMode end,
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
                        NicerCooldowns.db.class.cooldownList = {}
                        NicerCooldowns:BuildCooldownList()
                        NicerCooldowns:UpdateCooldownFrames()
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
                        if NicerCooldowns.db.class.ignoreSpell == "" or NicerCooldowns.db.class.ignoreSpell == nil then return end
                        table.insert(NicerCooldowns.db.class.ignoreSpellList, NicerCooldowns:removeBrackets(NicerCooldowns.db.class.ignoreSpell))
                        NicerCooldowns.db.class.ignoreSpell = ""
                        NicerCooldowns:BuildCooldownList()
                        NicerCooldowns:UpdateCooldownFrames()
                    end
                },
                ignoreSpells = classOption({
                    type = "select",
                    name = "Spell list",
                    order = 8,
                    values = function()
                        return NicerCooldowns.db.class.ignoreSpellList
                    end
                }),
                confirmRemoveIgnoreSpell = {
                    type = "execute",
                    name = "Remove",
                    order = 9,
                    func = function(info)
                        NicerCooldowns.db.class.ignoreSpellList = NicerCooldowns:tableFilter(NicerCooldowns.db.class.ignoreSpellList, function(_, idx)
                            return idx ~= NicerCooldowns.db.class.ignoreSpells
                        end)
                        NicerCooldowns:BuildCooldownList()
                        NicerCooldowns:UpdateCooldownFrames()
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
                        if NicerCooldowns.db.char.ignoreItem == "" or NicerCooldowns.db.char.ignoreItem == nil then return end
                        local newItem = NicerCooldowns:stringTrim(NicerCooldowns.db.char.ignoreItem)
                        newItem = NicerCooldowns:removeBrackets(newItem)
                        table.insert(NicerCooldowns.db.char.ignoreItems, newItem)
                        NicerCooldowns.db.char.ignoreItem = ""
                        NicerCooldowns:BuildCooldownList()
                        NicerCooldowns:UpdateCooldownFrames()
                    end
                },
                itemList = charOption({
                    type = "select",
                    name = "Item list",
                    order = 8,
                    values = function()
                        return NicerCooldowns.db.char.ignoreItems
                    end
                }),
                confirmRemoveIgnoreItem = {
                    type = "execute",
                    name = "Remove",
                    order = 9,
                    func = function(info)
                        NicerCooldowns.db.char.ignoreItems = NicerCooldowns:tableFilter(NicerCooldowns.db.char.ignoreItems, function(_, idx)
                            return idx ~= NicerCooldowns.db.char.itemList
                        end)
                        NicerCooldowns:BuildCooldownList()
                        NicerCooldowns:UpdateCooldownFrames()
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

function NicerCooldowns:LoadConfig()
    --NicerCooldowns:BuildCooldownList()
    LibStub("AceConfig-3.0"):RegisterOptionsTable("NicerCooldowns", NicerCooldownsAceConfig)
    self.options = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("NicerCooldowns", "NicerCooldowns")

    if (self.isClassic or self.isWotlk) and self.db.class.debugMode then
        InterfaceOptionsFrame_OpenToCategory(self.options)
    end
end

function NicerCooldowns:CreateSlashCommands()
    self:RegisterChatCommand("NicerCooldowns", "SlashCommand")
    self:RegisterChatCommand("cdb", "SlashCommand")
end


function NicerCooldowns:SlashCommand(msg)
    if self.isClassic or self.isWotlk or self.isClassic60 then
        InterfaceOptionsFrame_OpenToCategory(self.options)
    elseif self.isTBC then
        InterfaceOptionsFrame_OpenToFrame("NicerCooldowns")
    end
end

function NicerCooldowns:Throttle()
    --if not aura_env.last or aura_env.last < GetTime() - aura_env.config["throttle"] then
    --    aura_env.last = GetTime()
    --end
end
