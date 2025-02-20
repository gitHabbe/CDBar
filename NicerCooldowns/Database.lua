function NicerCooldowns:DatabaseInitialize()
    self.defaults = {}
    self.defaults.class = {}
    for k, v in pairs(self.ClassDefaults) do
        self.defaults.class[k] = v
    end
    self.defaults.char = {}
    for k, v in pairs(self.CharDefaults) do
        self.defaults.char[k] = v
    end
    self:_CreateDB()
    self.db = self.dbi

    if self.db.class.cooldownList == nil then
        self.db.class.cooldownList = {}
    end
    if self.db.class.ignoreSpellList == nil then
        self.db.class.ignoreSpellList = {}
    end
    if self.db.char.ignoreItems == nil then
        self.db.char.ignoreItems = {}
    end
end

function NicerCooldowns:_CreateDB()
    if self.isClassic or self.isClassic60 then
        self.dbi = LibStub("AceDB-3.0"):New("NicerCooldowns_DB", self.defaults, true)
    elseif self.isTBC or self.isWotlk then
        self.dbi = LibStub("AceDB-3.0"):New("NicerCooldowns_DB", self.defaults, "default")
    end

    if self.isTBC or self.isWotlk or self.isClassic60 then

        self.GCDReference = {
            validSpells = {
                ["Power Word: Fortitude"] = true,
                ["Shadow Bolt"] = true,
                ["Eviscerate"] = true,
                ["Wrath"] = true,
                ["Aspect of the Monkey"] = true,
                ["Arcane Intellect"] = true,
                ["Holy Light"] = true,
                ["Lightning Bolt"] = true,
                ["Heroic Strike"] = true,
            },
            spellBookIndex = 0,
            petValidPetSpells = {
                ["Blood Pact"] = true,
                ["Consume Shadows"] = true,
                ["Lesser Invisibility"] = true,
                ["Tainted Blood"] = true,
                ["Anguish"] = true,
                ["Growl"] = true,
                ["Claw"] = true,
                ["Waterbolt"] = true,
            },
            petSpellBookIndex = 0,
        }
    end

end

function NicerCooldowns:IsCooldownInDB(tableDB, targetSpellName)
    for _, value in pairs(tableDB) do
        local dbSpellAsTable = NicerCooldowns:stringSplit(value)
        local dbSpellName = table.concat(NicerCooldowns:tableSlice(dbSpellAsTable, 2, #dbSpellAsTable), " ")

        if dbSpellName == targetSpellName then
            return value
        end
    end

    return false
end

function NicerCooldowns:AddCooldownToDB(tableDB, targetSpellName)
    local tempTable = {}
    for _, dbSpell in ipairs(tableDB) do
        local dbSpellNum = tonumber(NicerCooldowns:stringSplit(dbSpell)[1])
        if type(dbSpellNum) == "number" and math.floor(dbSpellNum) == dbSpellNum then
            tempTable[tonumber(dbSpellNum)] = targetSpellName
        end
    end
    local startIndex = 101
    for i = startIndex, 200 do
        if tempTable[i] == nil then
            local dbSpellName = i .. " " .. targetSpellName
            table.insert(tableDB, dbSpellName)
            return dbSpellName
        end
    end
end
