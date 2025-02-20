local function colorize(text, color)
    return color .. text .. "|r"
end

DebugNicerCooldowns = {}

function DebugNicerCooldowns:Print(msg, header)
    if msg == nil then msg = "nil" end
    if type(msg) == "boolean" then msg = tostring(msg) end

    if NicerCooldowns.db.class.debugMode then
        if header then
            print(
                colorize("NicerCooldowns", NORMAL_FONT_COLOR_CODE) ..
                colorize(" (" .. header .. ")", GRAY_FONT_COLOR_CODE) ..
                " - " .. msg
            )
        else
            print(
                colorize("NicerCooldowns", NORMAL_FONT_COLOR_CODE) ..
                " - " .. msg
            )
        end
    end
end
