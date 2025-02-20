LCT_SpellData_Wotlk = {}


-- ================ DK ================

local SPEC_DK_BLOOD  = 250
local SPEC_DK_FROST  = 251
local SPEC_DK_UNHOLY = 252

-- Death Knight/Blood
-- Blood Tap
LCT_SpellData_Wotlk[45529] = {
    name = "Blood Tap",
    class = "DEATHKNIGHT",
    cooldown = 60,
}
-- Death Pact
LCT_SpellData_Wotlk[48743] = {
    name = "Death Pact",
    class = "DEATHKNIGHT",
    cooldown = 120,
}
-- Strangulate
LCT_SpellData_Wotlk[47476] = {
    name = "Strangulate",
    class = "DEATHKNIGHT",
    cooldown = 120,
}
-- Vampiric Blood
LCT_SpellData_Wotlk[55233] = {
    name = "Vampiric Blood",
    class = "DEATHKNIGHT",
    cooldown = 60,
}

-- Death Knight/Blood/talents
-- Rune Tap
LCT_SpellData_Wotlk[48982] = {
    name = "Rune Tap",
    class = "DEATHKNIGHT",
    cooldown = 30,
    talent = true,
    specID = { SPEC_DK_BLOOD },
}
-- Unholy Frenzy
LCT_SpellData_Wotlk[49016] = {
    name = "Unholy Frenzy",
    class = "DEATHKNIGHT",
    cooldown = 180,
    talent = true,
    specID = { SPEC_DK_UNHOLY },
}
-- Dancing Rune Weapon
LCT_SpellData_Wotlk[49028] = {
    name = "Dancing Rune Weapon",
    class = "DEATHKNIGHT",
    cooldown = 90,
    talent = true,
    specID = { SPEC_DK_BLOOD },
}

-- Death Knight/Frost
-- Horn of Winter
LCT_SpellData_Wotlk[57330] = {
    name = "Horn of Winter",
    class = "DEATHKNIGHT",
    cooldown = 20,
}
-- Icebound Fortitude
LCT_SpellData_Wotlk[48792] = {
    name = "Icebound Fortitude",
    class = "DEATHKNIGHT",
    cooldown = 120,
    duration = 12,
}
-- Mind Freeze
LCT_SpellData_Wotlk[47528] = {
    name = "Mind Freeze",
    class = "DEATHKNIGHT",
    cooldown = 10,
    interrupt = true,
}

-- Death Knight/Frost/talents
-- Lichborne
LCT_SpellData_Wotlk[49039] = {
    name = "Lichborne",
    class = "DEATHKNIGHT",
    cooldown = 120,
    talent = true,
    specID = { SPEC_DK_UNHOLY },
    duration = 10,
}
-- Hungering Cold
LCT_SpellData_Wotlk[49203] = {
    name = "Hungering Cold",
    class = "DEATHKNIGHT",
    cooldown = 60,
    talent = true,
    specID = { SPEC_DK_FROST },
}

-- Death Knight/Unholy
-- Anti-Magic Shell
LCT_SpellData_Wotlk[48707] = {
    name = "Anti-Magic Shell",
    class = "DEATHKNIGHT",
    cooldown = 45,
    duration = 5,
}
-- Death Grip
LCT_SpellData_Wotlk[49576] = {
    name = "Death Grip",
    class = "DEATHKNIGHT",
    cooldown = 35,
}
-- Death and Decay
LCT_SpellData_Wotlk[49936] = {
    name = "Death and Decay",
    class = "DEATHKNIGHT",
    cooldown = 30,
}
-- Raise Dead
LCT_SpellData_Wotlk[46584] = {
    name = "Raise Dead",
    class = "DEATHKNIGHT",
    cooldown = 180,
}

-- Death Knight/Unholy/talents
-- Anti-Magic Zone
LCT_SpellData_Wotlk[51052] = {
    name = "Anti-Magic Zone",
    class = "DEATHKNIGHT",
    cooldown = 120,
    talent = true,
    duration = 10,
    specID = { SPEC_DK_UNHOLY },
}
-- Summon Gargoyle
LCT_SpellData_Wotlk[49206] = {
    name = "Summon Gargoyle",
    class = "DEATHKNIGHT",
    cooldown = 180,
    talent = true,
    duration = 30,
    specID = { SPEC_DK_UNHOLY },
}

-- ================ DRUID ================

local SPEC_DRUID_BALANCE  = 102
local SPEC_DRUID_FERAL    = 103
local SPEC_DRUID_RESTO    = 105

-- Barkskin
LCT_SpellData_Wotlk[22812] = {
    name = "Barkskin",
    cooldown = 60,
    class = "DRUID",
    duration = 12,
}

-- Cower
LCT_SpellData_Wotlk[8998] = {
    name = "Cower",
    cooldown = 10,
    class = "DRUID",
}
LCT_SpellData_Wotlk[9000] = 8998
LCT_SpellData_Wotlk[9892] = 8998
LCT_SpellData_Wotlk[27004] = 8998
LCT_SpellData_Wotlk[31709] = 8998
LCT_SpellData_Wotlk[48575] = 8998

-- Force of Nature
LCT_SpellData_Wotlk[33831] = {
    name = "Force of Nature",
    cooldown = 180,
    class = "DRUID",
    talent = true,
    duration = 30,
    specID = { SPEC_DRUID_BALANCE },
}

-- Nature's Grasp
LCT_SpellData_Wotlk[16689] = {
    name = "Nature's Grasp",
    cooldown = 60,
    class = "DRUID",
}
LCT_SpellData_Wotlk[16810] = 16689
LCT_SpellData_Wotlk[16811] = 16689
LCT_SpellData_Wotlk[16812] = 16689
LCT_SpellData_Wotlk[16813] = 16689
LCT_SpellData_Wotlk[17329] = 16689
LCT_SpellData_Wotlk[27009] = 16689
LCT_SpellData_Wotlk[53312] = 16689

-- Frenzied Regeneration
LCT_SpellData_Wotlk[22842] = {
    name = "Frenzied Regeneration",
    class = "DRUID",
    cooldown = 180,
    duration = 10,
}

-- Challenging Roar
LCT_SpellData_Wotlk[5209] = {
    name = "Challenging Roar",
    class = "DRUID",
    cooldown = 180,
    duration = 6,
}

-- Bash
LCT_SpellData_Wotlk[5211] = {
    name = "Bash",
    class = "DRUID",
    cooldown = 60,
}
LCT_SpellData_Wotlk[6798] = 5211
LCT_SpellData_Wotlk[8983] = 5211

-- Prowl
LCT_SpellData_Wotlk[5215] = {
    name = "Prowl",
    class = "DRUID",
    cooldown = 10,
    cooldown_starts_on_aura_fade = true,
}
LCT_SpellData_Wotlk[6783] = 5215
LCT_SpellData_Wotlk[9913] = 5215
LCT_SpellData_Wotlk[48932] = 5215

-- Enrage
LCT_SpellData_Wotlk[5229] = {
    name = "Enrage",
    class = "DRUID",
    cooldown = 60,
    duration = 10,
}

-- Swiftmend
LCT_SpellData_Wotlk[18562] = {
    name = "Swiftmend",
    class = "DRUID",
    cooldown = 15,
    talent = true,
    specID = { SPEC_DRUID_RESTO },
}

-- Growl
LCT_SpellData_Wotlk[6795] = {
    name = "Growl",
    class = "DRUID",
    cooldown = 10,
}

-- Dash
LCT_SpellData_Wotlk[1850] = {
    name = "Dash",
    cooldown = 180,
    class = "DRUID",
}
LCT_SpellData_Wotlk[9821] = 1850
LCT_SpellData_Wotlk[33357] = 1850

-- Feral Charge
LCT_SpellData_Wotlk[16979] = {
    name = "Feral Charge",
    class = "DRUID",
    cooldown = 15,
    talent = true,
    specID = { SPEC_DRUID_FERAL },
}

-- Rebirth
LCT_SpellData_Wotlk[20484] = {
    name = "Rebirth",
    class = "DRUID",
    cooldown = 600,
}
LCT_SpellData_Wotlk[20739] = 20484
LCT_SpellData_Wotlk[20742] = 20484
LCT_SpellData_Wotlk[20747] = 20484
LCT_SpellData_Wotlk[20748] = 20484
LCT_SpellData_Wotlk[26994] = 20484
LCT_SpellData_Wotlk[48477] = 20484

-- Mangle
LCT_SpellData_Wotlk[33878] = {
    name = "Mangle",
    class = "DRUID",
    cooldown = 6,
    talent = true,
    specID = { SPEC_DRUID_FERAL },
}
LCT_SpellData_Wotlk[33986] = 33878
LCT_SpellData_Wotlk[33987] = 33878
LCT_SpellData_Wotlk[48563] = 33878
LCT_SpellData_Wotlk[48564] = 33878

-- Faerie Fire (Feral)
LCT_SpellData_Wotlk[16857] = {
    name = "Faerie Fire (Feral)",
    class = "DRUID",
    cooldown = 6,
    specID = { SPEC_DRUID_FERAL },
}

-- Nature's Swiftness
LCT_SpellData_Wotlk[17116] = {
    name = "Nature's Swiftness",
    class = "DRUID",
    cooldown = 180,
    talent = true,
    cooldown_starts_on_dispel = true,
    cooldown_starts_on_aura_fade = true,
    specID = { SPEC_DRUID_RESTO },
}

-- Tranquility
LCT_SpellData_Wotlk[740] = {
    name = "Tranquility",
    cooldown = 480,
    class = "DRUID",
}
LCT_SpellData_Wotlk[8918] = 740
LCT_SpellData_Wotlk[9862] = 740
LCT_SpellData_Wotlk[9863] = 740
LCT_SpellData_Wotlk[26983] = 740
LCT_SpellData_Wotlk[44203] = 740
LCT_SpellData_Wotlk[44205] = 740
LCT_SpellData_Wotlk[44206] = 740
LCT_SpellData_Wotlk[44207] = 740
LCT_SpellData_Wotlk[44208] = 740
LCT_SpellData_Wotlk[48446] = 740
LCT_SpellData_Wotlk[48447] = 740

-- Innervate
LCT_SpellData_Wotlk[29166] = {
    name = "Innervate",
    cooldown = 180,
    class = "DRUID",
}

-- Wild Growth
LCT_SpellData_Wotlk[48438] = {
    name = "Wild Growth",
    cooldown = 6,
    class = "DRUID",
    talent = true,
    specID = { SPEC_DRUID_RESTO },
}

-- Berserk
LCT_SpellData_Wotlk[50334] = {
    name = "Berserk",
    cooldown = 180,
    class = "DRUID",
    talent = true,
    specID = { SPEC_DRUID_FERAL },
}

-- Starfall
LCT_SpellData_Wotlk[48505] = {
    name = "Starfall",
    cooldown = 180,
    class = "DRUID",
    talent = true,
    duration = 10,
    specID = { SPEC_DRUID_BALANCE },
}

-- ================ HUNTER ================

local SPEC_HUNTER_BM   = 253
local SPEC_HUNTER_MM   = 254
local SPEC_HUNTER_SURV = 255

-- Distracting Shot
LCT_SpellData_Wotlk[20736] = {
    name = "Distracting Shot",
    class = "HUNTER",
    cooldown = 8,
}

-- Flare
LCT_SpellData_Wotlk[1543] = {
    name = "Flare",
    class = "HUNTER",
    cooldown = 20,
}

-- Feign Death
LCT_SpellData_Wotlk[5384] = {
    name = "Feign Death",
    class = "HUNTER",
    cooldown = 30,
}

-- Disengage
LCT_SpellData_Wotlk[781] = {
    name = "Disengage",
    class = "HUNTER",
    cooldown = 25,
}

-- Scatter Shot
LCT_SpellData_Wotlk[19503] = {
    name = "Scatter Shot",
    class = "HUNTER",
    cooldown = 30,
    talent = true,
    specID = { SPEC_HUNTER_MM },
}

-- Dash
LCT_SpellData_Wotlk[61684] = {
    name = "Dash",
    class = "HUNTER",
    pet = true,
    cooldown = 32,
}

-- Deterrence
LCT_SpellData_Wotlk[19263] = {
    name = "Deterrence",
    class = "HUNTER",
    cooldown = 90,
}

-- Scorpid Poison
LCT_SpellData_Wotlk[24640] = {
    name = "Scorpid Poison",
    class = "HUNTER",
    cooldown = 10,
}
LCT_SpellData_Wotlk[24583] = 24640
LCT_SpellData_Wotlk[24586] = 24640
LCT_SpellData_Wotlk[27060] = 24640
LCT_SpellData_Wotlk[24587] = 24640
LCT_SpellData_Wotlk[55728] = 24640

-- Tranquilizing Shot
LCT_SpellData_Wotlk[19801] = {
    name = "Tranquilizing Shot",
    class = "HUNTER",
    cooldown = 8,
}

-- Bite
LCT_SpellData_Wotlk[17253] = {
    name = "Bite",
    class = "HUNTER",
    cooldown = 10,
}
LCT_SpellData_Wotlk[27050] = 17253
LCT_SpellData_Wotlk[17258] = 17253
LCT_SpellData_Wotlk[17259] = 17253
LCT_SpellData_Wotlk[17261] = 17253
LCT_SpellData_Wotlk[17260] = 17253
LCT_SpellData_Wotlk[17257] = 17253
LCT_SpellData_Wotlk[17256] = 17253
LCT_SpellData_Wotlk[17255] = 17253

-- Aimed Shot
LCT_SpellData_Wotlk[19434] = {
    name = "Aimed Shot",
    class = "HUNTER",
    cooldown = 10,
}
LCT_SpellData_Wotlk[20900] = 19434
LCT_SpellData_Wotlk[20902] = 19434
LCT_SpellData_Wotlk[20903] = 19434
LCT_SpellData_Wotlk[20904] = 19434
LCT_SpellData_Wotlk[27065] = 19434
LCT_SpellData_Wotlk[20901] = 19434
LCT_SpellData_Wotlk[49049] = 19434
LCT_SpellData_Wotlk[49050] = 19434

-- Dive
LCT_SpellData_Wotlk[23145] = {
    name = "Dive",
    class = "HUNTER",
    cooldown = 32,
}

-- Poison Spit
LCT_SpellData_Wotlk[35387] = {
    name = "Poison Spit",
    class = "HUNTER",
    cooldown = 10,
}
LCT_SpellData_Wotlk[35389] = 35387
LCT_SpellData_Wotlk[35392] = 35387
LCT_SpellData_Wotlk[55555] = 35387
LCT_SpellData_Wotlk[55556] = 35387
LCT_SpellData_Wotlk[55557] = 35387

-- Arcane Shot
LCT_SpellData_Wotlk[3044] = {
    name = "Arcane Shot",
    class = "HUNTER",
    cooldown = 6,
    opt_lower_cooldown = 5,
}
LCT_SpellData_Wotlk[27019] = 3044
LCT_SpellData_Wotlk[14285] = 3044
LCT_SpellData_Wotlk[14283] = 3044
LCT_SpellData_Wotlk[14282] = 3044
LCT_SpellData_Wotlk[14281] = 3044
LCT_SpellData_Wotlk[14284] = 3044
LCT_SpellData_Wotlk[14286] = 3044
LCT_SpellData_Wotlk[14287] = 3044
LCT_SpellData_Wotlk[49044] = 3044
LCT_SpellData_Wotlk[49045] = 3044

-- Bestial Wrath
LCT_SpellData_Wotlk[19574] = {
    name = "Bestial Wrath",
    class = "HUNTER",
    cooldown = 120,
    talent = true,
    specID = { SPEC_HUNTER_BM },
}

-- Intimidation
LCT_SpellData_Wotlk[19577] = {
    name = "Intimidation",
    class = "HUNTER",
    cooldown = 60,
    talent = true,
    specID = { SPEC_HUNTER_BM },
}

-- Prowl
LCT_SpellData_Wotlk[24450] = {
    name = "Prowl",
    class = "HUNTER",
    cooldown = 10,
}
LCT_SpellData_Wotlk[24452] = 24450
LCT_SpellData_Wotlk[24453] = 24450

-- Raptor Strike
LCT_SpellData_Wotlk[2973] = {
    name = "Raptor Strike",
    class = "HUNTER",
    cooldown = 6,
}
LCT_SpellData_Wotlk[27014] = 2973
LCT_SpellData_Wotlk[14266] = 2973
LCT_SpellData_Wotlk[14261] = 2973
LCT_SpellData_Wotlk[14262] = 2973
LCT_SpellData_Wotlk[14260] = 2973
LCT_SpellData_Wotlk[14263] = 2973
LCT_SpellData_Wotlk[14264] = 2973
LCT_SpellData_Wotlk[14265] = 2973
LCT_SpellData_Wotlk[48995] = 2973
LCT_SpellData_Wotlk[48996] = 2973

-- Concussive Shot
LCT_SpellData_Wotlk[5116] = {
    name = "Concussive Shot",
    opt_lower_cooldown = 12,
    class = "HUNTER",
    cooldown = 12,
}

-- Counterattack
LCT_SpellData_Wotlk[19306] = {
    name = "Counterattack",
    class = "HUNTER",
    cooldown = 5,
}
LCT_SpellData_Wotlk[20909] = 19306
LCT_SpellData_Wotlk[20910] = 19306
LCT_SpellData_Wotlk[27067] = 19306
LCT_SpellData_Wotlk[48998] = 19306
LCT_SpellData_Wotlk[48999] = 19306

-- Wyvern Sting
LCT_SpellData_Wotlk[19386] = {
    name = "Wyvern Sting",
    class = "HUNTER",
    cooldown = 60,
    talent = true,
    specID = { SPEC_HUNTER_SURV },
}
LCT_SpellData_Wotlk[24132] = 19386
LCT_SpellData_Wotlk[24133] = 19386
LCT_SpellData_Wotlk[27068] = 19386
LCT_SpellData_Wotlk[49011] = 19386
LCT_SpellData_Wotlk[49012] = 19386

-- Snake Trap
LCT_SpellData_Wotlk[34600] = {
    name = "Snake Trap",
    opt_lower_cooldown = 24,
    class = "HUNTER",
    cooldown = 30,
}

-- Growl
LCT_SpellData_Wotlk[2649] = {
    name = "Growl",
    class = "HUNTER",
    cooldown = 5,
}
LCT_SpellData_Wotlk[14918] = 2649
LCT_SpellData_Wotlk[14919] = 2649
LCT_SpellData_Wotlk[14921] = 2649
LCT_SpellData_Wotlk[14916] = 2649
LCT_SpellData_Wotlk[14917] = 2649
LCT_SpellData_Wotlk[27047] = 2649
LCT_SpellData_Wotlk[14920] = 2649
LCT_SpellData_Wotlk[61676] = 2649

-- Misdirection
LCT_SpellData_Wotlk[34477] = {
    name = "Misdirection",
    class = "HUNTER",
    cooldown = 30,
}

-- Fire Breath
LCT_SpellData_Wotlk[34889] = {
    name = "Fire Breath",
    class = "HUNTER",
    cooldown = 10,
}
LCT_SpellData_Wotlk[35323] = 34889
LCT_SpellData_Wotlk[55482] = 34889
LCT_SpellData_Wotlk[55483] = 34889
LCT_SpellData_Wotlk[55484] = 34889
LCT_SpellData_Wotlk[55485] = 34889

-- Warp
LCT_SpellData_Wotlk[35346] = {
    name = "Warp",
    class = "HUNTER",
    cooldown = 15,
}

-- Readiness
LCT_SpellData_Wotlk[23989] = {
    name = "Readiness",
    class = "HUNTER",
    cooldown = 180,
    talent = true,
    resets = { 5116, 34026, 53271, 1513, 3044, 20736, 1543, 53351, 2643, 3045, 19801, 3034, 19263, 781, 13813, 5384, 60192, 1499, 13809, 13795, 34477, 1495, 2973, 34600, 19434, 53209, 34490, 19503 },
    specID = { SPEC_HUNTER_MM },
}

-- Silencing Shot
LCT_SpellData_Wotlk[34490] = {
    name = "Silencing Shot",
    class = "HUNTER",
    cooldown = 20,
    talent = true,
    specID = { SPEC_HUNTER_MM },
}

-- Cower
LCT_SpellData_Wotlk[1742] = {
    name = "Cower",
    class = "HUNTER",
    cooldown = 45,
}

-- Shell Shield
LCT_SpellData_Wotlk[26064] = {
    name = "Shell Shield",
    class = "HUNTER",
    cooldown = 180,
    pet = true,
}

-- Mongoose Bite
LCT_SpellData_Wotlk[1495] = {
    name = "Mongoose Bite",
    class = "HUNTER",
    cooldown = 5,
}
LCT_SpellData_Wotlk[14269] = 1495
LCT_SpellData_Wotlk[14270] = 1495
LCT_SpellData_Wotlk[14271] = 1495
LCT_SpellData_Wotlk[36916] = 1495
LCT_SpellData_Wotlk[53339] = 1495

-- Viper Sting
LCT_SpellData_Wotlk[3034] = {
    name = "Viper Sting",
    class = "HUNTER",
    cooldown = 15,
}

-- Freezing Trap
LCT_SpellData_Wotlk[1499] = {
    name = "Freezing Trap",
    opt_lower_cooldown = 24,
    class = "HUNTER",
    cooldown = 30,
    sets_cooldowns = {
        -- Freezing Arrow
        { spellid = 60192, cooldown = 30 },
    }
}
LCT_SpellData_Wotlk[14310] = 1499
LCT_SpellData_Wotlk[14311] = 1499

-- Pummel
LCT_SpellData_Wotlk[26090] = {
    name = "Pummel",
    class = "HUNTER",
    cooldown = 30,
}

-- Immolation Trap
LCT_SpellData_Wotlk[13795] = {
    name = "Immolation Trap",
    opt_lower_cooldown = 24,
    class = "HUNTER",
    cooldown = 30,
}
LCT_SpellData_Wotlk[27023] = 13795
LCT_SpellData_Wotlk[14302] = 13795
LCT_SpellData_Wotlk[14303] = 13795
LCT_SpellData_Wotlk[14304] = 13795
LCT_SpellData_Wotlk[14305] = 13795
LCT_SpellData_Wotlk[49055] = 13795
LCT_SpellData_Wotlk[49056] = 13795

-- Rapid Fire
LCT_SpellData_Wotlk[3045] = {
    name = "Rapid Fire",
    opt_lower_cooldown = 180,
    class = "HUNTER",
    cooldown = 300,
}
-- Volley
LCT_SpellData_Wotlk[1510] = {
    name = "Volley",
    class = "HUNTER",
    cooldown = 60,
}
LCT_SpellData_Wotlk[27022] = 1510
LCT_SpellData_Wotlk[14294] = 1510
LCT_SpellData_Wotlk[14295] = 1510
LCT_SpellData_Wotlk[58431] = 1510
LCT_SpellData_Wotlk[58434] = 1510

-- Scare Beast
LCT_SpellData_Wotlk[1513] = {
    name = "Scare Beast",
    class = "HUNTER",
    cooldown = 30,
}
LCT_SpellData_Wotlk[14326] = 1513
LCT_SpellData_Wotlk[14327] = 1513

-- Kill Command
LCT_SpellData_Wotlk[34026] = {
    name = "Kill Command",
    class = "HUNTER",
    cooldown = 60,
}

-- Furious Howl
LCT_SpellData_Wotlk[24604] = {
    name = "Furious Howl",
    class = "HUNTER",
    cooldown = 40,
}
LCT_SpellData_Wotlk[66491] = 24604
LCT_SpellData_Wotlk[66492] = 24604
LCT_SpellData_Wotlk[66493] = 24604
LCT_SpellData_Wotlk[66494] = 24604
LCT_SpellData_Wotlk[66495] = 24604

-- Frost Trap
LCT_SpellData_Wotlk[13809] = {
    name = "Frost Trap",
    opt_lower_cooldown = 24,
    class = "HUNTER",
    cooldown = 30,
}

-- Explosive Trap
LCT_SpellData_Wotlk[13813] = {
    name = "Explosive Trap",
    opt_lower_cooldown = 24,
    class = "HUNTER",
    cooldown = 30,
}
LCT_SpellData_Wotlk[27025] = 13813
LCT_SpellData_Wotlk[14316] = 13813
LCT_SpellData_Wotlk[14317] = 13813
LCT_SpellData_Wotlk[49066] = 13813
LCT_SpellData_Wotlk[49067] = 13813

-- Multi-Shot
LCT_SpellData_Wotlk[2643] = {
    name = "Multi-Shot",
    class = "HUNTER",
    cooldown = 10,
}
LCT_SpellData_Wotlk[27021] = 2643
LCT_SpellData_Wotlk[25294] = 2643
LCT_SpellData_Wotlk[14288] = 2643
LCT_SpellData_Wotlk[14289] = 2643
LCT_SpellData_Wotlk[14290] = 2643
LCT_SpellData_Wotlk[49047] = 2643
LCT_SpellData_Wotlk[49048] = 2643

-- Chimera Shot
LCT_SpellData_Wotlk[53209] = {
    name = "Chimera Shot",
    class = "HUNTER",
    cooldown = 10,
    talent = true,
    specID = { SPEC_HUNTER_MM },
}

-- Black Arrow
LCT_SpellData_Wotlk[3674] = {
    name = "Black Arrow",
    class = "HUNTER",
    cooldown = 30,
    talent = true,
    specID = { SPEC_HUNTER_SURV },
}

-- Explosive Shot
LCT_SpellData_Wotlk[53301] = {
    name = "Explosive Shot",
    class = "HUNTER",
    cooldown = 6,
    talent = true,
    detects = { 3674 },
    specID = { SPEC_HUNTER_SURV },
}

-- Master's Call
LCT_SpellData_Wotlk[53271] = {
    name = "Master's Call",
    class = "HUNTER",
    cooldown = 60,
}

-- Freezing Arrow
LCT_SpellData_Wotlk[60192] = {
    name = "Freezing Arrow",
    class = "HUNTER",
    cooldown = 30,
    sets_cooldowns = {
        -- Freezing Trap
        { spellid = 1499, cooldown = 30 },
    }
}

-- ================ MAGE ================

local SPEC_MAGE_ARCANE = 62
local SPEC_MAGE_FIRE = 63
local SPEC_MAGE_FROST = 64

-- Arcane Power
LCT_SpellData_Wotlk[12042] = {
    name = "Arcane Power",
    class = "MAGE",
    cooldown = 120,
    talent = true,
    specID = { SPEC_MAGE_ARCANE },
}

-- Presence of Mind
LCT_SpellData_Wotlk[12043] = {
    name = "Presence of Mind",
    class = "MAGE",
    cooldown = 120,
    talent = true,
    specID = { SPEC_MAGE_ARCANE },
}

-- Evocation
LCT_SpellData_Wotlk[12051] = {
    name = "Evocation",
    cooldown = 240,
    class = "MAGE",
}

-- Fire Ward
LCT_SpellData_Wotlk[543] = {
    name = "Fire Ward",
    cooldown = 30,
    class = "MAGE",
}
LCT_SpellData_Wotlk[8457] = 543
LCT_SpellData_Wotlk[8458] = 543
LCT_SpellData_Wotlk[10225] = 543
LCT_SpellData_Wotlk[10223] = 543
LCT_SpellData_Wotlk[27128] = 543
LCT_SpellData_Wotlk[43010] = 543

-- Invisibility
LCT_SpellData_Wotlk[66] = {
    name = "Invisibility",
    cooldown = 180,
    class = "MAGE",
}

-- Frost Ward
-- LCT_SpellData_Wotlk[6143] = {
--   cooldown = 30,
--   class = "MAGE",
-- }
-- LCT_SpellData_Wotlk[8461] = 6143
-- LCT_SpellData_Wotlk[8462] = 6143
-- LCT_SpellData_Wotlk[10177] = 6143
-- LCT_SpellData_Wotlk[28609] = 6143
-- LCT_SpellData_Wotlk[32796] = 6143
-- LCT_SpellData_Wotlk[43012] = 6143
--
-- Redirect Frost Ward to Fire Ward
LCT_SpellData_Wotlk[6143] = 543
LCT_SpellData_Wotlk[8461] = 543
LCT_SpellData_Wotlk[8462] = 543
LCT_SpellData_Wotlk[10177] = 543
LCT_SpellData_Wotlk[28609] = 543
LCT_SpellData_Wotlk[32796] = 543
LCT_SpellData_Wotlk[43012] = 543

-- Fire Blast
LCT_SpellData_Wotlk[2136] = {
    name = "Fire Blast",
    cooldown = 8,
    opt_lower_cooldown = 6.5,
    class = "MAGE",
}
LCT_SpellData_Wotlk[2137] = 2136
LCT_SpellData_Wotlk[2138] = 2136
LCT_SpellData_Wotlk[8412] = 2136
LCT_SpellData_Wotlk[8413] = 2136
LCT_SpellData_Wotlk[10197] = 2136
LCT_SpellData_Wotlk[10199] = 2136
LCT_SpellData_Wotlk[27078] = 2136
LCT_SpellData_Wotlk[27079] = 2136
LCT_SpellData_Wotlk[42872] = 2136
LCT_SpellData_Wotlk[42873] = 2136

-- Freeze
LCT_SpellData_Wotlk[33395] = {
    name = "Freeze",
    cooldown = 25,
    class = "MAGE",
    specID = { SPEC_MAGE_FROST },
}

-- Cone of Cold
LCT_SpellData_Wotlk[120] = {
    name = "Cone of Cold",
    cooldown = 10,
    opt_lower_cooldown = 8,
    class = "MAGE",
}
LCT_SpellData_Wotlk[8492] = 120
LCT_SpellData_Wotlk[27087] = 120
LCT_SpellData_Wotlk[10161] = 120
LCT_SpellData_Wotlk[10159] = 120
LCT_SpellData_Wotlk[10160] = 120
LCT_SpellData_Wotlk[42930] = 120
LCT_SpellData_Wotlk[42931] = 120

-- Frost Nova
LCT_SpellData_Wotlk[122] = {
    name = "Frost Nova",
    cooldown = 25,
    opt_lower_cooldown = 21,
    class = "MAGE",
}
LCT_SpellData_Wotlk[865] = 122
LCT_SpellData_Wotlk[6131] = 122
LCT_SpellData_Wotlk[10230] = 122
LCT_SpellData_Wotlk[27088] = 122
LCT_SpellData_Wotlk[42917] = 122

-- Ritual of Refreshment
LCT_SpellData_Wotlk[43987] = {
    name = "Ritual of Refreshment",
    cooldown = 300,
    class = "MAGE",
}
LCT_SpellData_Wotlk[58659] = 43987

-- Cold Snap
LCT_SpellData_Wotlk[11958] = {
    name = "Cold Snap",
    cooldown = 480,
    opt_lower_cooldown = 384,
    class = "MAGE",
    specID = { SPEC_MAGE_FROST },
    talent = true,
    resets = { 122, 120, 12472, 11426, 31687, 45438, 44572 },
}

-- Dragon's Breath
LCT_SpellData_Wotlk[31661] = {
    name = "Dragon's Breath",
    cooldown = 20,
    class = "MAGE",
    talent = true,
    specID = { SPEC_MAGE_FIRE },
}
LCT_SpellData_Wotlk[33041] = 31661
LCT_SpellData_Wotlk[33042] = 31661
LCT_SpellData_Wotlk[33043] = 31661
LCT_SpellData_Wotlk[42949] = 31661
LCT_SpellData_Wotlk[42950] = 31661

-- Blink
LCT_SpellData_Wotlk[1953] = {
    name = "Blink",
    cooldown = 15,
    opt_lower_cooldown = 13,
    class = "MAGE",
}

-- Combustion
LCT_SpellData_Wotlk[11129] = {
    name = "Combustion",
    cooldown = 120,
    class = "MAGE",
    talent = true,
    specID = { SPEC_MAGE_FIRE },
}

-- Icy Veins
LCT_SpellData_Wotlk[12472] = {
    name = "Icy Veins",
    cooldown = 180,
    class = "MAGE",
    talent = true,
    specID = { SPEC_MAGE_FROST },
}

-- Counterspell
LCT_SpellData_Wotlk[2139] = {
    name = "Counterspell",
    class = "MAGE",
    cooldown = 24,
    interrupt = true,
}

-- Blast Wave
LCT_SpellData_Wotlk[11113] = {
    name = "Blast Wave",
    cooldown = 30,
    class = "MAGE",
    talent = true,
    specID = { SPEC_MAGE_FIRE },
}
LCT_SpellData_Wotlk[13018] = 11113
LCT_SpellData_Wotlk[13019] = 11113
LCT_SpellData_Wotlk[13020] = 11113
LCT_SpellData_Wotlk[13021] = 11113
LCT_SpellData_Wotlk[27133] = 11113
LCT_SpellData_Wotlk[33933] = 11113
LCT_SpellData_Wotlk[42944] = 11113
LCT_SpellData_Wotlk[42945] = 11113

-- Ice Barrier
LCT_SpellData_Wotlk[11426] = {
    name = "Ice Barrier",
    cooldown = 30,
    opt_lower_cooldown = 24,
    class = "MAGE",
    talent = true,
    specID = { SPEC_MAGE_FROST },
    detects = { 11958 }
}
LCT_SpellData_Wotlk[13031] = 11426
LCT_SpellData_Wotlk[13032] = 11426
LCT_SpellData_Wotlk[13033] = 11426
LCT_SpellData_Wotlk[27134] = 11426
LCT_SpellData_Wotlk[33405] = 11426
LCT_SpellData_Wotlk[43038] = 11426
LCT_SpellData_Wotlk[43039] = 11426

-- Summon Water Elemental
LCT_SpellData_Wotlk[31687] = {
    name = "Summon Water Elemental",
    cooldown = 180,
    class = "MAGE",
    talent = true,
    specID = { SPEC_MAGE_FROST },
}

-- Ice Block
LCT_SpellData_Wotlk[45438] = {
    name = "Ice Block",
    cooldown = 300,
    opt_lower_cooldown = 240,
    class = "MAGE",
}

-- Mana Sapphire
LCT_SpellData_Wotlk[27103] = {
    name = "Mana Sapphire",
    class = "MAGE",
    item = true,
    opt_charges = 3,
    cooldown = 120
}

-- Mirror Image
LCT_SpellData_Wotlk[55342] = {
    name = "Mirror Image",
    class = "MAGE",
    cooldown = 180
}

-- Deep Freeze
LCT_SpellData_Wotlk[44572] = {
    name = "Deep Freeze",
    class = "MAGE",
    cooldown = 30,
    talent = true,
    specID = { SPEC_MAGE_FROST },
}

-- ================ PALADIN ================

local SPEC_PALADIN_HOLY        = 65
local SPEC_PALADIN_PROTECTION  = 66
local SPEC_PALADIN_RETRIBUTION = 70

-- Blessing of Freedom
LCT_SpellData_Wotlk[1044] = {
    name = "Blessing of Freedom",
    class = "PALADIN",
    cooldown = 25,
}

-- Divine Intervention
LCT_SpellData_Wotlk[19752] = {
    name = "Divine Intervention",
    class = "PALADIN",
    cooldown = 600,
}

-- Crusader Strike
LCT_SpellData_Wotlk[35395] = {
    name = "Crusader Strike",
    class = "PALADIN",
    cooldown = 4,
}

-- Hand of Sacrifice
LCT_SpellData_Wotlk[6940] = {
    name = "Hand of Sacrifice",
    class = "PALADIN",
    cooldown = 120,
}

-- Lay on Hands
LCT_SpellData_Wotlk[633] = {
    name = "Lay on Hands",
    opt_lower_cooldown = 2400,
    cooldown = 1200,
    class = "PALADIN",
}
LCT_SpellData_Wotlk[2800] = 633
LCT_SpellData_Wotlk[10310] = 633
LCT_SpellData_Wotlk[27154] = 633
LCT_SpellData_Wotlk[48788] = 633

-- Exorcism
LCT_SpellData_Wotlk[879] = {
    name = "Exorcism",
    class = "PALADIN",
    cooldown = 15,
}
LCT_SpellData_Wotlk[5614] = 879
LCT_SpellData_Wotlk[5615] = 879
LCT_SpellData_Wotlk[10312] = 879
LCT_SpellData_Wotlk[10313] = 879
LCT_SpellData_Wotlk[10314] = 879
LCT_SpellData_Wotlk[27138] = 879
LCT_SpellData_Wotlk[48800] = 879
LCT_SpellData_Wotlk[48801] = 879

-- Avenging Wrath
LCT_SpellData_Wotlk[31884] = {
    name = "Avenging Wrath",
    class = "PALADIN",
    cooldown = 180,
}

-- Divine Illumination
LCT_SpellData_Wotlk[31842] = {
    name = "Divine Illumination",
    class = "PALADIN",
    cooldown = 180,
    talent = true,
    specID = { SPEC_PALADIN_HOLY },
}

-- Hammer of Justice
LCT_SpellData_Wotlk[853] = {
    name = "Hammer of Justice",
    opt_lower_cooldown = 45,
    cooldown = 60,
    class = "PALADIN",
}
LCT_SpellData_Wotlk[5588] = 853
LCT_SpellData_Wotlk[5589] = 853
LCT_SpellData_Wotlk[10308] = 853

-- Divine Shield
LCT_SpellData_Wotlk[642] = {
    name = "Divine Shield",
    class = "PALADIN",
    cooldown = 300,
}

-- Holy Shield
LCT_SpellData_Wotlk[20925] = {
    name = "Holy Shield",
    class = "PALADIN",
    cooldown = 8,
    talent = true,
    specID = { SPEC_PALADIN_PROTECTION },
}
LCT_SpellData_Wotlk[20927] = 20925
LCT_SpellData_Wotlk[20928] = 20925
LCT_SpellData_Wotlk[27179] = 20925
LCT_SpellData_Wotlk[48951] = 20925
LCT_SpellData_Wotlk[48952] = 20925

-- Avenger's Shield
LCT_SpellData_Wotlk[31935] = {
    name = "Avenger's Shield",
    class = "PALADIN",
    cooldown = 30,
    talent = true,
    detects = { 20925 },
    specID = { SPEC_PALADIN_PROTECTION },
}
LCT_SpellData_Wotlk[32699] = 31935
LCT_SpellData_Wotlk[32700] = 31935
LCT_SpellData_Wotlk[48826] = 31935
LCT_SpellData_Wotlk[48827] = 31935

-- Judgement
LCT_SpellData_Wotlk[20271] = {
    name = "Judgement",
    opt_lower_cooldown = 8,
    cooldown = 10,
    class = "PALADIN",
}

-- Consecration
LCT_SpellData_Wotlk[26573] = {
    name = "Consecration",
    class = "PALADIN",
    cooldown = 8,
}
LCT_SpellData_Wotlk[20922] = 26573
LCT_SpellData_Wotlk[20923] = 26573
LCT_SpellData_Wotlk[20924] = 26573
LCT_SpellData_Wotlk[27173] = 26573
LCT_SpellData_Wotlk[20116] = 26573
LCT_SpellData_Wotlk[48818] = 26573
LCT_SpellData_Wotlk[48819] = 26573

-- Divine Favor
LCT_SpellData_Wotlk[20216] = {
    name = "Divine Favor",
    class = "PALADIN",
    cooldown = 120,
    talent = true,
    specID = { SPEC_PALADIN_HOLY },
}

-- Righteous Defense
LCT_SpellData_Wotlk[31789] = {
    name = "Righteous Defense",
    class = "PALADIN",
    cooldown = 8,
}

-- Hammer of Wrath
LCT_SpellData_Wotlk[24275] = {
    name = "Hammer of Wrath",
    class = "PALADIN",
    cooldown = 6,
}
LCT_SpellData_Wotlk[24239] = 24275
LCT_SpellData_Wotlk[24274] = 24275
LCT_SpellData_Wotlk[27180] = 24275
LCT_SpellData_Wotlk[48805] = 24275
LCT_SpellData_Wotlk[48806] = 24275

-- Repentance
LCT_SpellData_Wotlk[20066] = {
    name = "Repentance",
    class = "PALADIN",
    cooldown = 60,
    talent = true,
    specID = { SPEC_PALADIN_RETRIBUTION },
}

-- Divine Protection
LCT_SpellData_Wotlk[498] = {
    name = "Divine Protection",
    class = "PALADIN",
    cooldown = 180,
}

-- Holy Shock
LCT_SpellData_Wotlk[20473] = {
    name = "Holy Shock",
    class = "PALADIN",
    cooldown = 6,
    talent = true,
    detects = { 20216 },
    specID = { SPEC_PALADIN_HOLY },
}
LCT_SpellData_Wotlk[20929] = 20473
LCT_SpellData_Wotlk[20930] = 20473
LCT_SpellData_Wotlk[27174] = 20473
LCT_SpellData_Wotlk[33072] = 20473
LCT_SpellData_Wotlk[48824] = 20473
LCT_SpellData_Wotlk[48825] = 20473

-- Holy Wrath
LCT_SpellData_Wotlk[2812] = {
    name = "Holy Wrath",
    class = "PALADIN",
    cooldown = 30,
}
LCT_SpellData_Wotlk[10318] = 2812
LCT_SpellData_Wotlk[27139] = 2812
LCT_SpellData_Wotlk[48816] = 2812
LCT_SpellData_Wotlk[48817] = 2812

-- Blessing of Protection
LCT_SpellData_Wotlk[1022] = {
    name = "Blessing of Protection",
    opt_lower_cooldown = 180,
    cooldown = 300,
    class = "PALADIN",
}
LCT_SpellData_Wotlk[5599] = 1022
LCT_SpellData_Wotlk[10278] = 1022

-- Divine Storm
LCT_SpellData_Wotlk[53385] = {
    name = "Divine Storm",
    class = "PALADIN",
    cooldown = 10,
    talent = true,
    specID = { SPEC_PALADIN_PROTECTION },
}

-- Hammer of the Righteous
LCT_SpellData_Wotlk[53595] = {
    name = "Hammer of the Righteous",
    class = "PALADIN",
    cooldown = 6,
    talent = true,
    specID = { SPEC_PALADIN_HOLY },
}

-- Divine Plea
LCT_SpellData_Wotlk[54428] = {
    name = "Divine Plea",
    class = "PALADIN",
    cooldown = 60,
    talent = true,
    specID = { SPEC_PALADIN_HOLY },
}

-- Shield of Righteousness
LCT_SpellData_Wotlk[53600] = {
    name = "Shield of Righteousness",
    class = "PALADIN",
    cooldown = 6,
}
LCT_SpellData_Wotlk[61411] = 53600

-- ================ PRIEST ================

local SPEC_PRIEST_DISC = 256
local SPEC_PRIEST_HOLY = 257
local SPEC_PRIEST_SHADOW = 258

-- Power Word: Shield
LCT_SpellData_Wotlk[17] = {
    name = "Power Word: Shield",
    class = "PRIEST",
    cooldown = 4,
}
LCT_SpellData_Wotlk[592] = 17
LCT_SpellData_Wotlk[600] = 17
LCT_SpellData_Wotlk[25217] = 17
LCT_SpellData_Wotlk[25218] = 17
LCT_SpellData_Wotlk[10898] = 17
LCT_SpellData_Wotlk[10899] = 17
LCT_SpellData_Wotlk[10900] = 17
LCT_SpellData_Wotlk[10901] = 17
LCT_SpellData_Wotlk[3747] = 17
LCT_SpellData_Wotlk[6065] = 17
LCT_SpellData_Wotlk[6066] = 17
LCT_SpellData_Wotlk[10898] = 17
LCT_SpellData_Wotlk[10899] = 17
LCT_SpellData_Wotlk[10900] = 17
LCT_SpellData_Wotlk[10901] = 17
LCT_SpellData_Wotlk[25217] = 17
LCT_SpellData_Wotlk[25218] = 17
LCT_SpellData_Wotlk[48065] = 17
LCT_SpellData_Wotlk[48066] = 17

-- Divine Hymn
LCT_SpellData_Wotlk[64843] = {
    name = "Divine Hymn",
    class = "PRIEST",
    cooldown = 480,
    defensive = true,
}

-- Hymn of Hope
LCT_SpellData_Wotlk[64901] = {
    name = "Hymn of Hope",
    class = "PRIEST",
    cooldown = 360,
    defensive = true,
}

-- Fade
LCT_SpellData_Wotlk[586] = {
    name = "Fade",
    class = "PRIEST",
    cooldown = 30,
    opt_lower_cooldown = 24,
}

-- Power Infusion
LCT_SpellData_Wotlk[10060] = {
    name = "Power Infusion",
    class = "PRIEST",
    cooldown = 120,
    talent = true,
    specID = { SPEC_PRIEST_DISC },
}

-- Desperate Prayer
LCT_SpellData_Wotlk[48173] = {
    name = "Desperate Prayer",
    class = "PRIEST",
    cooldown = 120,
}
LCT_SpellData_Wotlk[19236] = 48173
LCT_SpellData_Wotlk[19238] = 48173
LCT_SpellData_Wotlk[19240] = 48173
LCT_SpellData_Wotlk[19241] = 48173
LCT_SpellData_Wotlk[19242] = 48173
LCT_SpellData_Wotlk[19243] = 48173
LCT_SpellData_Wotlk[25437] = 48173
LCT_SpellData_Wotlk[48172] = 48173

-- Shadow Word: Death
LCT_SpellData_Wotlk[32379] = {
    name = "Shadow Word: Death",
    class = "PRIEST",
    cooldown = 12,
}
LCT_SpellData_Wotlk[32996] = 32379
LCT_SpellData_Wotlk[48157] = 32379
LCT_SpellData_Wotlk[48158] = 32379

-- Silence
LCT_SpellData_Wotlk[15487] = {
    name = "Silence",
    class = "PRIEST",
    cooldown = 45,
    talent = true,
    specID = { SPEC_PRIEST_SHADOW },
}

-- Shadowfiend
LCT_SpellData_Wotlk[34433] = {
    name = "Shadowfiend",
    class = "PRIEST",
    cooldown = 300,
}

-- Psychic Scream
LCT_SpellData_Wotlk[8122] = {
    name = "Psychic Scream",
    class = "PRIEST",
    cooldown = 30,
    opt_lower_cooldown = 26,
}
LCT_SpellData_Wotlk[8124] = 8122
LCT_SpellData_Wotlk[10888] = 8122
LCT_SpellData_Wotlk[10890] = 8122

-- Mind Blast
LCT_SpellData_Wotlk[8092] = {
    name = "Mind Blast",
    class = "PRIEST",
    cooldown = 8,
    opt_lower_cooldown = 5.5,
}
LCT_SpellData_Wotlk[8102] = 8092
LCT_SpellData_Wotlk[8103] = 8092
LCT_SpellData_Wotlk[8104] = 8092
LCT_SpellData_Wotlk[8105] = 8092
LCT_SpellData_Wotlk[8106] = 8092
LCT_SpellData_Wotlk[10945] = 8092
LCT_SpellData_Wotlk[10946] = 8092
LCT_SpellData_Wotlk[10947] = 8092
LCT_SpellData_Wotlk[25372] = 8092
LCT_SpellData_Wotlk[25375] = 8092
LCT_SpellData_Wotlk[48126] = 8092
LCT_SpellData_Wotlk[48127] = 8092

-- Prayer of Mending
LCT_SpellData_Wotlk[33076] = {
    name = "Prayer of Mending",
    class = "PRIEST",
    cooldown = 10,
}
LCT_SpellData_Wotlk[48112] = 33076
LCT_SpellData_Wotlk[48113] = 33076

-- Inner Focus
LCT_SpellData_Wotlk[14751] = {
    name = "Inner Focus",
    class = "PRIEST",
    cooldown = 180,
    talent = true,
    specID = { SPEC_PRIEST_DISC },
}

-- Pain Suppression
LCT_SpellData_Wotlk[33206] = {
    name = "Pain Suppression",
    class = "PRIEST",
    cooldown = 180,
    talent = true,
    specID = { SPEC_PRIEST_DISC },
}

-- Fear Ward
LCT_SpellData_Wotlk[6346] = {
    name = "Fear Ward",
    class = "PRIEST",
    cooldown = 180,
}

-- Lightwell
LCT_SpellData_Wotlk[724] = {
    name = "Lightwell",
    class = "PRIEST",
    cooldown = 180,
    talent = true,
    specID = { SPEC_PRIEST_HOLY },
}
LCT_SpellData_Wotlk[27870] = 724
LCT_SpellData_Wotlk[27871] = 724
LCT_SpellData_Wotlk[28275] = 724
LCT_SpellData_Wotlk[48086] = 724
LCT_SpellData_Wotlk[48087] = 724

-- Penance
LCT_SpellData_Wotlk[47540] = {
    name = "Penance",
    class = "PRIEST",
    cooldown = 12,
    talent = true,
    specID = { SPEC_PRIEST_DISC },
}
LCT_SpellData_Wotlk[53005] = 47540
LCT_SpellData_Wotlk[53006] = 47540
LCT_SpellData_Wotlk[53007] = 47540

-- Dispersion
LCT_SpellData_Wotlk[47585] = {
    name = "Dispersion",
    class = "PRIEST",
    cooldown = 120,
    talent = true,
    specID = { SPEC_PRIEST_SHADOW },
}

-- Guardian Spirit
LCT_SpellData_Wotlk[47788] = {
    name = "Guardian Spirit",
    class = "PRIEST",
    cooldown = 180,
    talent = true,
    specID = { SPEC_PRIEST_HOLY },
}

-- ================ ROGUE ================

local SPEC_ROGUE_ASSA = 259
local SPEC_ROGUE_COMBAT = 260
local SPEC_ROGUE_SUB = 261

-- Blind
LCT_SpellData_Wotlk[2094] = {
    name = "Blind",
    class = "ROGUE",
    opt_lower_cooldown = 90,
    cooldown = 120, -- Consider everyone is sub since we have no per-spec cooldown on classic
}

-- Blade Flurry
LCT_SpellData_Wotlk[13877] = {
    name = "Blade Flurry",
    cooldown = 120,
    class = "ROGUE",
    talent = true,
    specID = { SPEC_ROGUE_COMBAT },
}

-- Cold Blood
LCT_SpellData_Wotlk[14177] = {
    name = "Cold Blood",
    cooldown = 180,
    class = "ROGUE",
    cooldown_starts_on_aura_fade = true,
    talent = true,
    specID = { SPEC_ROGUE_SUB },
}

-- Shadowstep
LCT_SpellData_Wotlk[36554] = {
    name = "Shadowstep",
    cooldown = 30,
    class = "ROGUE",
    specID = { SPEC_ROGUE_SUB },
}

-- Kick
LCT_SpellData_Wotlk[1766] = {
    name = "Kick",
    cooldown = 10,
    class = "ROGUE",
    interrupt = true,
}

-- Distract
LCT_SpellData_Wotlk[1725] = {
    name = "Distract",
    cooldown = 30,
    class = "ROGUE",
}

-- Evasion
LCT_SpellData_Wotlk[5277] = {
    name = "Evasion",
    class = "ROGUE",
    opt_lower_cooldown = 210,
    cooldown = 300,
}
LCT_SpellData_Wotlk[26669] = 5277

-- Sprint
LCT_SpellData_Wotlk[2983] = {
    name = "Sprint",
    class = "ROGUE",
    opt_lower_cooldown = 210,
    cooldown = 180,
}
LCT_SpellData_Wotlk[8696] = 2983
LCT_SpellData_Wotlk[11305] = 2983

-- Vanish
LCT_SpellData_Wotlk[1856] = {
    name = "Vanish",
    class = "ROGUE",
    cooldown = 120,
}
LCT_SpellData_Wotlk[1857] = 1856
LCT_SpellData_Wotlk[26889] = 1856

-- Riposte
LCT_SpellData_Wotlk[14251] = {
    name = "Riposte",
    cooldown = 6,
    class = "ROGUE",
    talent = true,
    specID = { SPEC_ROGUE_COMBAT },
}

-- Feint
LCT_SpellData_Wotlk[1966] = {
    name = "Feint",
    cooldown = 10,
    class = "ROGUE",
}
LCT_SpellData_Wotlk[6768] = 1966
LCT_SpellData_Wotlk[8637] = 1966
LCT_SpellData_Wotlk[11303] = 1966
LCT_SpellData_Wotlk[25302] = 1966
LCT_SpellData_Wotlk[27448] = 1966
LCT_SpellData_Wotlk[48658] = 1966
LCT_SpellData_Wotlk[48659] = 1966

-- Ghostly Strike
LCT_SpellData_Wotlk[14278] = {
    name = "Ghostly Strike",
    cooldown = 20,
    class = "ROGUE",
    talent = true,
    specID = { SPEC_ROGUE_SUB },
}

-- Stealth
LCT_SpellData_Wotlk[1784] = {
    name = "Stealth",
    class = "ROGUE",
    opt_lower_cooldown = 8, -- Camouflage talent
    cooldown_starts_on_aura_fade = true,
    cooldown = 10,
}

-- Adrenaline Rush
LCT_SpellData_Wotlk[13750] = {
    name = "Adrenaline Rush",
    cooldown = 180,
    class = "ROGUE",
    talent = true,
    specID = { SPEC_ROGUE_COMBAT },
}

-- Cannot track this as it's only in stealth...
-- Premeditation
LCT_SpellData_Wotlk[14183] = {
    name = "Premeditation",
    cooldown = 120,
    class = "ROGUE",
    talent = true,
}

-- Preparation
LCT_SpellData_Wotlk[14185] = {
    name = "Preparation",
    cooldown = 600,
    class = "ROGUE",
    specID = { SPEC_ROGUE_SUB },
    talent = true,
    resets = {
        -- Always reset
        5277, 2983, 1856, 14177, 36554,
        -- Only reset with the glyph, but we consider everyone uses said glyph
        1766, 13877, 51722
    },
}

-- Kidney Shot
LCT_SpellData_Wotlk[408] = {
    name = "Kidney Shot",
    cooldown = 20,
    class = "ROGUE",
}
LCT_SpellData_Wotlk[8643] = 408

-- Gouge
LCT_SpellData_Wotlk[1776] = {
    name = "Gouge",
    class = "ROGUE",
    opt_lower_cooldown = 9,
    cooldown = 10,
}

-- Cloak of Shadows
LCT_SpellData_Wotlk[31224] = {
    name = "Cloak of Shadows",
    cooldown = 60,
    class = "ROGUE",
}

-- Shadow Dance
LCT_SpellData_Wotlk[51713] = {
    name = "Shadow Dance",
    class = "ROGUE",
    cooldown = 60,
    talent = true,
    specID = { SPEC_ROGUE_SUB },
}

-- Dismantle
LCT_SpellData_Wotlk[51722] = {
    name = "Dismantle",
    class = "ROGUE",
    cooldown = 60,
}

-- Killing Spree
LCT_SpellData_Wotlk[51690] = {
    name = "Killing Spree",
    class = "ROGUE",
    cooldown = 120,
    talent = true,
    specID = { SPEC_ROGUE_COMBAT },
}

-- ================ SHAMAN ================

local SPEC_SHAMAN_ELEMENTAL   = 262
local SPEC_SHAMAN_ENHANCEMENT = 263
local SPEC_SHAMAN_RESTORATION = 264

-- Earth Elemental Totem
LCT_SpellData_Wotlk[2062] = {
    name = "Earth Elemental Totem",
    cooldown = 600,
    class = "SHAMAN",
}

-- Astral Recall
LCT_SpellData_Wotlk[556] = {
    name = "Astral Recall",
    cooldown = 900,
    class = "SHAMAN",
}

-- Nature's Swiftness
LCT_SpellData_Wotlk[16188] = {
    name = "Nature's Swiftness",
    cooldown = 120,
    class = "SHAMAN",
    talent = true,
    cooldown_starts_on_dispel = true,
}

-- Mana Tide Totem
LCT_SpellData_Wotlk[16190] = {
    name = "Mana Tide Totem",
    cooldown = 300,
    class = "SHAMAN",
    talent = true,
}

-- Fire Elemental Totem
LCT_SpellData_Wotlk[2894] = {
    name = "Fire Elemental Totem",
    cooldown = 600,
    class = "SHAMAN",
    specID = { SPEC_SHAMAN_ELEMENTAL },
}

-- Grounding Totem
LCT_SpellData_Wotlk[8177] = {
    name = "Grounding Totem",
    class = "SHAMAN",
    cooldown = 15,
    opt_lower_cooldown = 13,
}

-- Shamanistic Rage
LCT_SpellData_Wotlk[30823] = {
    name = "Shamanistic Rage",
    class = "SHAMAN",
    cooldown = 60,
    talent = true,
    specID = { SPEC_SHAMAN_ENHANCEMENT },
}

-- Earth Shock
LCT_SpellData_Wotlk[8042] = {
    name = "Earth Shock",
    cooldown = 6,
    class = "SHAMAN",
}
LCT_SpellData_Wotlk[8044] = 8042
LCT_SpellData_Wotlk[8045] = 8042
LCT_SpellData_Wotlk[8046] = 8042
LCT_SpellData_Wotlk[10412] = 8042
LCT_SpellData_Wotlk[10413] = 8042
LCT_SpellData_Wotlk[10414] = 8042
LCT_SpellData_Wotlk[25454] = 8042
LCT_SpellData_Wotlk[49230] = 8042
LCT_SpellData_Wotlk[49231] = 8042
-- Frost Shock
LCT_SpellData_Wotlk[8056] = 8042
LCT_SpellData_Wotlk[8058] = 8042
LCT_SpellData_Wotlk[10472] = 8042
LCT_SpellData_Wotlk[10473] = 8042
LCT_SpellData_Wotlk[25464] = 8042
LCT_SpellData_Wotlk[49235] = 8042
LCT_SpellData_Wotlk[49236] = 8042
-- Flame Shock
LCT_SpellData_Wotlk[8050] = 8042
LCT_SpellData_Wotlk[8052] = 8042
LCT_SpellData_Wotlk[8053] = 8042
LCT_SpellData_Wotlk[10447] = 8042
LCT_SpellData_Wotlk[10448] = 8042
LCT_SpellData_Wotlk[29228] = 8042
LCT_SpellData_Wotlk[25457] = 8042
LCT_SpellData_Wotlk[49232] = 8042
LCT_SpellData_Wotlk[49233] = 8042

-- Elemental Mastery
LCT_SpellData_Wotlk[16166] = {
    name = "Elemental Mastery",
    cooldown = 180,
    class = "SHAMAN",
    talent = true,
    specID = { SPEC_SHAMAN_ELEMENTAL },
}

-- Heroism
LCT_SpellData_Wotlk[32182] = {
    name = "Heroism",
    cooldown = 300,
    class = "SHAMAN",
}
-- Bloodlust
LCT_SpellData_Wotlk[2825] = {
    name = "Bloodlust",
    cooldown = 600,
    class = "SHAMAN",
}

-- Reincarnation
LCT_SpellData_Wotlk[20608] = {
    name = "Reincarnation",
    class = "SHAMAN",
    cooldown = 1800,
}

-- Stormstrike
LCT_SpellData_Wotlk[17364] = {
    name = "Stormstrike",
    class = "SHAMAN",
    cooldown = 8,
    talent = true,
    specID = { SPEC_SHAMAN_ENHANCEMENT },
}

-- Chain Lightning
LCT_SpellData_Wotlk[421] = {
    name = "Chain Lightning",
    cooldown = 6,
    class = "SHAMAN",
    specID = { SPEC_SHAMAN_ELEMENTAL },
}
LCT_SpellData_Wotlk[930] = 421
LCT_SpellData_Wotlk[2860] = 421
LCT_SpellData_Wotlk[10605] = 421
LCT_SpellData_Wotlk[25439] = 421
LCT_SpellData_Wotlk[25442] = 421
LCT_SpellData_Wotlk[49270] = 421
LCT_SpellData_Wotlk[49271] = 421

-- Earthbind Totem
LCT_SpellData_Wotlk[2484] = {
    name = "Earthbind Totem",
    cooldown = 15,
    class = "SHAMAN",
}

-- Stoneclaw Totem
LCT_SpellData_Wotlk[5730] = {
    name = "Stoneclaw Totem",
    cooldown = 30,
    class = "SHAMAN",
}
LCT_SpellData_Wotlk[6390] = 5730
LCT_SpellData_Wotlk[6391] = 5730
LCT_SpellData_Wotlk[6392] = 5730
LCT_SpellData_Wotlk[10427] = 5730
LCT_SpellData_Wotlk[10428] = 5730
LCT_SpellData_Wotlk[25525] = 5730
LCT_SpellData_Wotlk[58580] = 5730
LCT_SpellData_Wotlk[58581] = 5730
LCT_SpellData_Wotlk[58582] = 5730

-- Fire Nova Totem
LCT_SpellData_Wotlk[1535] = {
    name = "Fire Nova Totem",
    class = "SHAMAN",
    cooldown = 10,
}
LCT_SpellData_Wotlk[8498] = 1535
LCT_SpellData_Wotlk[8499] = 1535
LCT_SpellData_Wotlk[11314] = 1535
LCT_SpellData_Wotlk[11315] = 1535
LCT_SpellData_Wotlk[25546] = 1535
LCT_SpellData_Wotlk[25547] = 1535
LCT_SpellData_Wotlk[61650] = 1535
LCT_SpellData_Wotlk[61657] = 1535

-- Riptide
LCT_SpellData_Wotlk[61295] = {
    name = "Riptide",
    class = "SHAMAN",
    cooldown = 6,
    talent = true,
    specID = { SPEC_SHAMAN_RESTORATION },
}
LCT_SpellData_Wotlk[61299] = 61295
LCT_SpellData_Wotlk[61300] = 61295
LCT_SpellData_Wotlk[61301] = 61295

-- Thunderstorm
LCT_SpellData_Wotlk[51490] = {
    name = "Thunderstorm",
    class = "SHAMAN",
    cooldown = 45,
    talent = true,
    specID = { SPEC_SHAMAN_ELEMENTAL },
}

-- Hex
LCT_SpellData_Wotlk[51514] = {
    name = "Hex",
    class = "SHAMAN",
    cooldown = 45,
    cc = true,
}

-- Wind Shear
LCT_SpellData_Wotlk[57994] = {
    name = "Wind Shear",
    class = "SHAMAN",
    cooldown = 6,
}

-- Feral Spirit
LCT_SpellData_Wotlk[51533] = {
    name = "Feral Spirit",
    class = "SHAMAN",
    cooldown = 180,
    talent = true,
    specID = { SPEC_SHAMAN_ENHANCEMENT },
}

-- TODO Nature's Guardian (is there an event?)

-- ================ WARLOCK ================

local SPEC_WARLOCK_AFFLICTION  = 265
local SPEC_WARLOCK_DEMONOLOGY  = 266
local SPEC_WARLOCK_DESTRUCTION = 267

-- Conflagrate
LCT_SpellData_Wotlk[17962] = {
    name = "Conflagrate",
    cooldown = 10,
    class = "WARLOCK",
    specID = { SPEC_WARLOCK_DESTRUCTION },
}

-- Suffering
LCT_SpellData_Wotlk[17735] = {
    name = "Suffering",
    class = "WARLOCK",
    cooldown = 120,
    pet = true,
}
LCT_SpellData_Wotlk[17750] = 17735
LCT_SpellData_Wotlk[17751] = 17735
LCT_SpellData_Wotlk[17752] = 17735
LCT_SpellData_Wotlk[27271] = 17735
LCT_SpellData_Wotlk[33701] = 17735
LCT_SpellData_Wotlk[47989] = 17735
LCT_SpellData_Wotlk[47990] = 17735

-- Shadowfury
LCT_SpellData_Wotlk[30283] = {
    name = "Shadowfury",
    class = "WARLOCK",
    cooldown = 20,
    specID = { SPEC_WARLOCK_DESTRUCTION },
}
LCT_SpellData_Wotlk[30413] = 30283
LCT_SpellData_Wotlk[30414] = 30283
LCT_SpellData_Wotlk[47846] = 30283
LCT_SpellData_Wotlk[47847] = 30283

-- Shadow Ward
LCT_SpellData_Wotlk[6229] = {
    name = "Shadow Ward",
    class = "WARLOCK",
    cooldown = 30,
}
LCT_SpellData_Wotlk[11739] = 6229
LCT_SpellData_Wotlk[11740] = 6229
LCT_SpellData_Wotlk[28610] = 6229
LCT_SpellData_Wotlk[47890] = 6229
LCT_SpellData_Wotlk[47891] = 6229

-- Phase Shift
LCT_SpellData_Wotlk[4511] = {
    name = "Phase Shift",
    class = "WARLOCK",
    cooldown = 10,
    pet = true,
}

-- Inferno
LCT_SpellData_Wotlk[1122] = {
    name = "Inferno",
    class = "WARLOCK",
    cooldown = 600,
}

-- Ritual of Doom
LCT_SpellData_Wotlk[18540] = {
    name = "Ritual of Doom",
    class = "WARLOCK",
    cooldown = 1800,
}

-- Howl of Terror
LCT_SpellData_Wotlk[5484] = {
    name = "Howl of Terror",
    class = "WARLOCK",
    cooldown = 40,
}
LCT_SpellData_Wotlk[17928] = 5484

-- Torment
LCT_SpellData_Wotlk[3716] = {
    name = "Torment",
    class = "WARLOCK",
    cooldown = 5,
    pet = true,
}
-- Sacrifice
LCT_SpellData_Wotlk[7812] = {
    name = "Sacrifice",
    class = "WARLOCK",
    cooldown = 60,
    pet = true,
}
LCT_SpellData_Wotlk[7809] = 3716
LCT_SpellData_Wotlk[7810] = 3716
LCT_SpellData_Wotlk[7811] = 3716
LCT_SpellData_Wotlk[11774] = 3716
LCT_SpellData_Wotlk[11775] = 3716
LCT_SpellData_Wotlk[27270] = 3716
LCT_SpellData_Wotlk[47984] = 3716

-- Death Coil
LCT_SpellData_Wotlk[6789] = {
    name = "Death Coil",
    cooldown = 120,
    class = "WARLOCK",
}
LCT_SpellData_Wotlk[17925] = 6789
LCT_SpellData_Wotlk[17926] = 6789
LCT_SpellData_Wotlk[27223] = 6789
LCT_SpellData_Wotlk[47859] = 6789
LCT_SpellData_Wotlk[47860] = 6789

-- Lash of Pain
LCT_SpellData_Wotlk[7814] = {
    name = "Lash of Pain",
    class = "WARLOCK",
    cooldown = 12,
    opt_lower_cooldown = 6,
    pet = true,
}
LCT_SpellData_Wotlk[7815] = 7814
LCT_SpellData_Wotlk[7816] = 7814
LCT_SpellData_Wotlk[11778] = 7814
LCT_SpellData_Wotlk[11779] = 7814
LCT_SpellData_Wotlk[11780] = 7814
LCT_SpellData_Wotlk[27274] = 7814
LCT_SpellData_Wotlk[47991] = 7814
LCT_SpellData_Wotlk[47992] = 7814

-- Soulshatter
LCT_SpellData_Wotlk[29858] = {
    name = "Soulshatter",
    class = "WARLOCK",
    cooldown = 180,
    pet = true,
}

-- Amplify Curse
LCT_SpellData_Wotlk[18288] = {
    name = "Amplify Curse",
    class = "WARLOCK",
    cooldown = 180,
    talent = true,
    specID = { SPEC_WARLOCK_AFFLICTION },
}

-- Curse of Doom
LCT_SpellData_Wotlk[603] = {
    name = "Curse of Doom",
    class = "WARLOCK",
    cooldown = 60,
}
LCT_SpellData_Wotlk[30910] = 603
LCT_SpellData_Wotlk[47867] = 603

-- Spell Lock
LCT_SpellData_Wotlk[19244] = {
    name = "Spell Lock",
    class = "WARLOCK",
    cooldown = 24,
    pet = true,
}
LCT_SpellData_Wotlk[19647] = 19244

-- Ritual of Souls
LCT_SpellData_Wotlk[29893] = {
    name = "Ritual of Souls",
    class = "WARLOCK",
    cooldown = 300,
}
LCT_SpellData_Wotlk[58887] = 29893

-- Shadowburn
LCT_SpellData_Wotlk[17877] = {
    name = "Shadowburn",
    cooldown = 15,
    class = "WARLOCK",
    specID = { SPEC_WARLOCK_DESTRUCTION },

}
LCT_SpellData_Wotlk[18867] = 17877
LCT_SpellData_Wotlk[18868] = 17877
LCT_SpellData_Wotlk[18869] = 17877
LCT_SpellData_Wotlk[18871] = 17877
LCT_SpellData_Wotlk[27263] = 17877
LCT_SpellData_Wotlk[18870] = 17877
LCT_SpellData_Wotlk[30546] = 17877
LCT_SpellData_Wotlk[47826] = 17877
LCT_SpellData_Wotlk[47827] = 17877

-- Soothing Kiss
LCT_SpellData_Wotlk[6360] = {
    name = "Soothing Kiss",
    class = "WARLOCK",
    cooldown = 4,
    pet = true,
}
LCT_SpellData_Wotlk[7813] = 6360
LCT_SpellData_Wotlk[11784] = 6360
LCT_SpellData_Wotlk[11785] = 6360
LCT_SpellData_Wotlk[27275] = 6360

-- Fel Domination
LCT_SpellData_Wotlk[18708] = {
    name = "Fel Domination",
    class = "WARLOCK",
    cooldown = 180,
}

-- Devour Magic
LCT_SpellData_Wotlk[19505] = {
    name = "Devour Magic",
    class = "WARLOCK",
    cooldown = 8,
    pet = true,
}
LCT_SpellData_Wotlk[19731] = 19505
LCT_SpellData_Wotlk[19734] = 19505
LCT_SpellData_Wotlk[19736] = 19505
LCT_SpellData_Wotlk[27276] = 19505
LCT_SpellData_Wotlk[27277] = 19505
LCT_SpellData_Wotlk[48011] = 19505

-- Chaos Bolt
LCT_SpellData_Wotlk[50796] = {
    name = "Chaos Bolt",
    class = "WARLOCK",
    cooldown = 12,
    talent = true,
    specID = { SPEC_WARLOCK_DESTRUCTION },
}

-- Haunt
LCT_SpellData_Wotlk[48141] = {
    name = "Haunt",
    class = "WARLOCK",
    cooldown = 8,
    talent = true,
    specID = { SPEC_WARLOCK_AFFLICTION },
}

-- Metamorphosis
LCT_SpellData_Wotlk[59672] = {
    name = "Metamorphosis",
    class = "WARLOCK",
    cooldown = 180,
    talent = true,
    specID = { SPEC_WARLOCK_DEMONOLOGY },
}

-- Shadowflame
LCT_SpellData_Wotlk[47897] = {
    name = "Shadowflame",
    class = "WARLOCK",
    cooldown = 15,
}
LCT_SpellData_Wotlk[61290] = 47897

-- Demonic Circle: Teleport
LCT_SpellData_Wotlk[48020] = {
    name = "Demonic Circle: Teleport",
    class = "WARLOCK",
    cooldown = 30,
}
LCT_SpellData_Wotlk[61290] = 47897

-- ================ WARRIOR ================

local SPEC_WARRIOR_ARMS = 71
local SPEC_WARRIOR_FURY = 72
local SPEC_WARRIOR_PROT = 73

-- Death Wish
LCT_SpellData_Wotlk[12292] = {
    name = "Death Wish",
    class = "WARRIOR",
    cooldown = 180,
    talent = true,
    duration = 30,
    specID = { SPEC_WARRIOR_FURY },
}

-- Shield Block
LCT_SpellData_Wotlk[2565] = {
    name = "Shield Block",
    class = "WARRIOR",
    cooldown = 60,
}

-- Mortal Strike
LCT_SpellData_Wotlk[12294] = {
    name = "Mortal Strike",
    class = "WARRIOR",
    cooldown = 5,
    talent = true,
    specID = { SPEC_WARRIOR_ARMS },
}
LCT_SpellData_Wotlk[21551] = 12294
LCT_SpellData_Wotlk[21552] = 12294
LCT_SpellData_Wotlk[21553] = 12294
LCT_SpellData_Wotlk[25248] = 12294
LCT_SpellData_Wotlk[30330] = 12294
LCT_SpellData_Wotlk[47485] = 12294
LCT_SpellData_Wotlk[47486] = 12294

-- Bloodthirst
LCT_SpellData_Wotlk[23881] = {
    name = "Bloodthirst",
    class = "WARRIOR",
    cooldown = 4,
    talent = true,
    detects = { 12292 },
    specID = { SPEC_WARRIOR_FURY },
}

-- Intervene
LCT_SpellData_Wotlk[3411] = {
    name = "Intervene",
    class = "WARRIOR",
    cooldown = 30,
}

-- Taunt
LCT_SpellData_Wotlk[355] = {
    name = "Taunt",
    class = "WARRIOR",
    cooldown = 8,
}

-- Charge
LCT_SpellData_Wotlk[100] = {
    name = "Charge",
    class = "WARRIOR",
    cooldown = 15,
}
LCT_SpellData_Wotlk[6178] = 100
LCT_SpellData_Wotlk[11578] = 100

-- Spell Reflection
LCT_SpellData_Wotlk[23920] = {
    name = "Spell Reflection",
    class = "WARRIOR",
    cooldown = 10,
}

-- Shield Slam
LCT_SpellData_Wotlk[23922] = {
    name = "Shield Slam",
    class = "WARRIOR",
    cooldown = 6,
}
LCT_SpellData_Wotlk[23923] = 23922
LCT_SpellData_Wotlk[23924] = 23922
LCT_SpellData_Wotlk[25258] = 23922
LCT_SpellData_Wotlk[23925] = 23922
LCT_SpellData_Wotlk[30356] = 23922
LCT_SpellData_Wotlk[47487] = 23922
LCT_SpellData_Wotlk[47488] = 23922

-- Intimidating Shout
LCT_SpellData_Wotlk[5246] = {
    name = "Intimidating Shout",
    class = "WARRIOR",
    cooldown = 120,
}

-- Challenging Shout
LCT_SpellData_Wotlk[1161] = {
    name = "Challenging Shout",
    class = "WARRIOR",
    cooldown = 180,
}

-- Whirlwind
LCT_SpellData_Wotlk[1680] = {
    name = "Whirlwind",
    class = "WARRIOR",
    cooldown = 10,
}

-- Concussion Blow
LCT_SpellData_Wotlk[12809] = {
    name = "Concussion Blow",
    class = "WARRIOR",
    cooldown = 30,
    talent = true,
    specID = { SPEC_WARRIOR_PROT },
}

-- Pummel
LCT_SpellData_Wotlk[6552] = {
    name = "Pummel",
    class = "WARRIOR",
    cooldown = 10,
    interrupt = true,
}
LCT_SpellData_Wotlk[72] = 6552
LCT_SpellData_Wotlk[1671] = 6552
LCT_SpellData_Wotlk[1672] = 6552
LCT_SpellData_Wotlk[6554] = 6552
LCT_SpellData_Wotlk[29704] = 6552

-- Berserker Rage
LCT_SpellData_Wotlk[18499] = {
    name = "Berserker Rage",
    class = "WARRIOR",
    cooldown = 30,
}

-- Disarm
LCT_SpellData_Wotlk[676] = {
    name = "Disarm",
    class = "WARRIOR",
    cooldown = 60,
}

-- Revenge
LCT_SpellData_Wotlk[6572] = {
    name = "Revenge",
    class = "WARRIOR",
    cooldown = 5,
    specID = { SPEC_WARRIOR_PROT },
}
LCT_SpellData_Wotlk[6574] = 6572
LCT_SpellData_Wotlk[7379] = 6572
LCT_SpellData_Wotlk[11600] = 6572
LCT_SpellData_Wotlk[11601] = 6572
LCT_SpellData_Wotlk[25269] = 6572
LCT_SpellData_Wotlk[25288] = 6572
LCT_SpellData_Wotlk[30357] = 6572
LCT_SpellData_Wotlk[57823] = 6572

-- Last Stand
LCT_SpellData_Wotlk[12975] = {
    name = "Last Stand",
    class = "WARRIOR",
    cooldown = 180,
    talent = true,
    duration = 20,
    specID = { SPEC_WARRIOR_PROT },
}

-- Recklessness
LCT_SpellData_Wotlk[1719] = {
    name = "Recklessness",
    class = "WARRIOR",
    cooldown = 300,
}

-- Thunder Clap
LCT_SpellData_Wotlk[6343] = {
    name = "Thunder Clap",
    class = "WARRIOR",
    cooldown = 6,
}
LCT_SpellData_Wotlk[8198] = 6343
LCT_SpellData_Wotlk[8205] = 6343
LCT_SpellData_Wotlk[8204] = 6343
LCT_SpellData_Wotlk[11580] = 6343
LCT_SpellData_Wotlk[11581] = 6343
LCT_SpellData_Wotlk[25264] = 6343
LCT_SpellData_Wotlk[47501] = 6343
LCT_SpellData_Wotlk[47502] = 6343

-- Retaliation
LCT_SpellData_Wotlk[20230] = {
    name = "Retaliation",
    class = "WARRIOR",
    cooldown = 300,
    duration = 12,
}

-- Mocking Blow
LCT_SpellData_Wotlk[694] = {
    name = "Mocking Blow",
    class = "WARRIOR",
    cooldown = 60,
}

-- Shield Wall
LCT_SpellData_Wotlk[871] = {
    name = "Shield Wall",
    class = "WARRIOR",
    cooldown = 300,
    duration = 12,
}

-- Bloodrage
LCT_SpellData_Wotlk[2687] = {
    name = "Bloodrage",
    class = "WARRIOR",
    cooldown = 60,
}

-- Sweeping Strikes
LCT_SpellData_Wotlk[12328] = {
    name = "Sweeping Strikes",
    class = "WARRIOR",
    cooldown = 30,
}

-- Intercept
LCT_SpellData_Wotlk[20252] = {
    name = "Intercept",
    class = "WARRIOR",
    cooldown = 30,
}

-- Overpower
LCT_SpellData_Wotlk[7384] = {
    name = "Overpower",
    class = "WARRIOR",
    cooldown = 5,
}

-- Shockwave
LCT_SpellData_Wotlk[46968] = {
    name = "Shockwave",
    class = "WARRIOR",
    cooldown = 20,
    talent = true,
    specID = { SPEC_WARRIOR_PROT },
}

-- Bladestorm
LCT_SpellData_Wotlk[46924] = {
    name = "Bladestorm",
    class = "WARRIOR",
    cooldown = 90,
    talent = true,
    specID = { SPEC_WARRIOR_ARMS },
}

-- Shattering Throw
LCT_SpellData_Wotlk[64382] = {
    name = "Shattering Throw",
    class = "WARRIOR",
    cooldown = 300,
}

-- Heroic Throw
LCT_SpellData_Wotlk[57755] = {
    name = "Heroic Throw",
    class = "WARRIOR",
    cooldown = 60,
}


-- Racials
-- Gift of the Naaru (Draenei)
LCT_SpellData_Wotlk[28880] = {
    name = "Gift of the Naaru",
    race = "Draenei",
    heal = true,
    duration = 5,
    cooldown = 180,
}

-- Will of the Forsaken (Undead)
LCT_SpellData_Wotlk[7744] = {
    name = "Will of the Forsaken",
    race = "Scourge",
    cooldown = 120,
    sets_cooldowns = {
        -- PvP Trinket
        { spellid = 42292, cooldown = 45 },
        -- Will to Survive
        { spellid = 59752, cooldown = 45 },
    },
}
-- Will to Survive / EMFH (Human)
LCT_SpellData_Wotlk[59752] = {
    name = "Will to Survive",
    race = "Human",
    cooldown = 120,
    sets_cooldowns = {
        -- WOTF
        { spellid = 7744, cooldown = 45 },
        -- PvP Trinket
        { spellid = 42292, cooldown = 120 },
    }
}
-- Every man for himself
LCT_SpellData_Wotlk[59752] = {
    name = "Every man for himself",
    race = "Human",
    cooldown = 120,
    sets_cooldowns = {
        -- WOTF
        { spellid = 7744, cooldown = 45 },
        -- PvP Trinket
        { spellid = 42292, cooldown = 120 },
    }
}
-- Arcane Torrent (Blood Elf)
LCT_SpellData_Wotlk[28730] = {
    name = "Arcane Torrent",
    race = "BloodElf",
    cooldown = 120,
    silence = true,
}
LCT_SpellData_Wotlk[25046] = 28730
-- Blood Fury (Orc)
LCT_SpellData_Wotlk[20572] = {
    name = "Blood Fury",
    race = "Orc",
    offensive = true,
    duration = 15,
    cooldown = 120,
}
LCT_SpellData_Wotlk[33697] = 20572
LCT_SpellData_Wotlk[33702] = 20572
-- Cannibalize (Undead)
LCT_SpellData_Wotlk[20577] = {
    name = "Cannibalize",
    race = "Scourge",
    heal = true,
    duration = 10,
    cooldown = 120,
}
-- Escape Artist (Gnome)
LCT_SpellData_Wotlk[20589] = {
    name = "Escape Artist",
    race = "Gnome",
    defensive = true,
    cooldown = 105,
}
-- Shadowmeld (Night Elf)
LCT_SpellData_Wotlk[58984] = {
    name = "Shadowmeld",
    race = "NightElf",
    defensive = true,
    cooldown = 120,
}
-- Stoneform (Dwarf)
LCT_SpellData_Wotlk[20594] = {
    name = "Stoneform",
    race = "Dwarf",
    defensive = true,
    duration = 8,
    cooldown = 120,
}
-- War Stomp (Tauren)
LCT_SpellData_Wotlk[20549] = {
    name = "War Stomp",
    race = "Tauren",
    stun = true,
    duration = 2,
    cooldown = 120,
}
-- Berserking (Troll)
LCT_SpellData_Wotlk[26297] = {
    name = "Berserking",
    race = "Troll",
    offensive = true,
    duration = 10,
    cooldown = 180
}


-- PvP Trinket
LCT_SpellData_Wotlk[42292] = {
    name = "PvP Trinket",
    pvp_trinket = true,
    cooldown = 120,
    icon_alliance = [[Interface\Icons\INV_Jewelry_TrinketPVP_01]],
    icon_horde = [[Interface\Icons\INV_Jewelry_TrinketPVP_01]],
    icon_horde_wotlk = [[Interface\Icons\inv_jewelry_necklace_38]],
    icon_alliance_wotlk = [[Interface\Icons\inv_jewelry_necklace_37]],
    sets_cooldowns = {
        -- WOTF
        { spellid = 7744, cooldown = 45 },
        -- Will to Survive (EMFH)
        { spellid = 59752, cooldown = 120 },
    }
}

-- Healthstone
LCT_SpellData_Wotlk[11732] = {
    name = "Healthstone",
    item = true,
    heal = true,
    cooldown = 120
}
LCT_SpellData_Wotlk[23476] = 11732
LCT_SpellData_Wotlk[23477] = 11732
LCT_SpellData_Wotlk[27235] = 11732
LCT_SpellData_Wotlk[27236] = 11732
LCT_SpellData_Wotlk[27237] = 11732
LCT_SpellData_Wotlk[47872] = 11732
LCT_SpellData_Wotlk[47873] = 11732
LCT_SpellData_Wotlk[47874] = 11732
LCT_SpellData_Wotlk[47875] = 11732
LCT_SpellData_Wotlk[47876] = 11732
LCT_SpellData_Wotlk[47877] = 11732
