function NicerCooldowns:tableMerge(table1, table2)
    for key, value in pairs(table2) do
        table1[key] = value
    end
end

function NicerCooldowns:tableSlice(tbl, first, last, step)
    local sliced = {}

    for i = first or 1, last or #tbl, step or 1 do
        sliced[#sliced+1] = tbl[i]
    end

    return sliced
end

function NicerCooldowns:tableFilter(targetTable, filterIter)
    local newTable = {}

    for index, item in pairs(targetTable) do
        if filterIter(item, index, targetTable) then table.insert(newTable, item) end
    end

    return newTable
end

function NicerCooldowns:stringTitlize(str)
    local words = {}
    for word in str:gmatch("%S+") do
        table.insert(words, word)
    end

    -- Capitalize the first letter of each word
    for i, word in ipairs(words) do
        local firstLetter = word:sub(1, 1)
        local restOfWord = word:sub(2)
        words[i] = firstLetter:upper() .. restOfWord
    end

    -- Join the words back into a single string
    local titledStr = table.concat(words, " ")

    return titledStr
end

function NicerCooldowns:removeBrackets(str)
    local openBracket = string.sub(str, 1, 1)
    local closeBracket = string.sub(str, -1)

    if openBracket == "[" and closeBracket == "]" then
        return string.sub(str, 2, -2)
    end
    return str
end

function NicerCooldowns:stringSplit(input, separator)
        if separator == nil then
            separator = "%s"
        end
        local stringTable = {}
        for str in string.gmatch(input, "([^".. separator .."]+)") do
            table.insert(stringTable, str)
        end
        return stringTable
end

function NicerCooldowns:stringTrim(str)
    return str:match( "^%s*(.-)%s*$" )
end

function NicerCooldowns:tableJoin(targetTable, start)
    local concatenated_strings = ""
    for i = start, #targetTable do
        concatenated_strings = concatenated_strings .. targetTable[i]
    end
    return concatenated_strings
end

function NicerCooldowns:numberRound(num, decimalCount)
    local factor = 10 ^ decimalCount
    return math.floor(num * factor + 0.5) / factor
end
