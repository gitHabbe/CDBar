function CDBar:CreateMainFrame()
    self.cooldownFrame = CreateFrame("Frame", "CDBar", UIParent, "CDBar_CooldownFrame_Template")
    self.cooldownFrame:ClearAllPoints()
    self.cooldownFrame:SetSize(1,1)
    self.cooldownFrame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
end

function CDBar:UpdateMainFramePosition()
    local positionX
    if self.db.class["isCenterX"] then
        positionX = ((self.firstRowWidth + 0.5) / 2) * -1
    else
        positionX = self.db.class["positionX"]
    end
    self.cooldownFrame:ClearAllPoints()
    self.cooldownFrame:SetPoint("CENTER", UIParent, "CENTER", positionX, self.db.class["positionY"])
end

function CDBar:_CreateCooldownFrame(frameID, cooldown)
    local frame = self.cooldownFrame["Cooldown" .. frameID]
    if not frame then
        frame = self:_CreateButtonFrame(frameID)
    end
    frame.icon:SetTexture(cooldown.iconTexture)
    frame.icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)
    frame:SetScript("OnMouseDown", onFrameClick)
    if self.db.class["darkBorders"] then
        frame.border:SetVertexColor(0.1, 0.1, 0.1)
    else
        frame.border:SetVertexColor(0.9, 0.9, 0.9)
    end

    if frame:GetAlpha() ~= 1 then -- esoFilip mode
        frame:SetAlpha(1)
    end

    return frame
end

function CDBar:_CreateButtonFrame(frameID)
    local frameName = self.cooldownFrame:GetName() .. "Cooldown" .. frameID
    local frame = CreateFrame("Button", frameName, self.cooldownFrame, "CDBarCooldownFrame_Template")

    frame.icon      = _G[frameName .. "Icon"];
    frame.count     = _G[frameName .. "Count"];
    frame.cooldown  = _G[frameName .. "Cooldown"];
    frame.stealable = _G[frameName .. "Stealable"];
    frame.border    = _G[frameName .. "Border"];

    frame:SetID(frameID)
    self.cooldownFrame["Cooldown" .. frameID] = frame;

    return frame
end

function CDBar:HideFrame(frameID)
    local frameName = "Cooldown" .. frameID
    local frame = self.cooldownFrame[frameName]
    if frame then
        frame.hidden = true
        frame:Hide()
        frame.cooldown:Hide()
        return true
    end
    return false
end

function CDBar:CenterLastRowFrames(lastRowId, rowWidth)
    local lastIconRepositioned = false
    local frameID = lastRowId
    local frameTable = {}
    while not lastIconRepositioned do
        local frame = self.cooldownFrame["Cooldown" .. frameID]
        if not frame then lastIconRepositioned = true break end
        frameID = frameID + 1
        table.insert(frameTable, frame)
    end
    if #frameTable == 0 then return end
    local tempFrame = frameTable[1]
    local oldPoint, oldParent, oldRelative, _, oldPositionY = tempFrame:GetPoint()
    local positionX = (self.firstRowWidth - rowWidth) / 2
    tempFrame:SetPoint(oldPoint, oldParent, oldRelative, positionX, oldPositionY)
end

function CDBar:SetFrameCooldown(cooldownFrame, start, duration)
    if self.isClassic then
        CooldownFrame_Set(cooldownFrame, start, duration, 1);
    elseif self.isTBC or self.isWotlk then
        if start > 0 and duration > 0 then
            CooldownFrame_SetTimer(cooldownFrame, start, duration, 1)
        else
            cooldownFrame:Hide()
        end
    end
end

function CDBar:HideLeftoverFrames(startIndex)
    while startIndex < 100 do
        local isHidden = self:HideFrame(startIndex)
        if not isHidden then
            break
        end
        startIndex = startIndex + 1
    end
end

function CDBar:PlaceCooldownFrame(frameID, relativeIndex, size, yOffset)
    local frame;
    frame = self.cooldownFrame["Cooldown" .. frameID]
    if not frame then return end
    if frame.hidden and self.db.class.hideReadyCooldowns then
        return
    end

    local point = "TOPLEFT";
    local relativePoint = "TOPRIGHT"
    yOffset = -yOffset;

    local relativeTo;
    local xOffset = self.db.class["xPadding"]
    if (frameID == 1) then
        relativePoint = point;
        xOffset = 0;
        yOffset = 0;
        relativeTo = frame:GetParent();

    elseif (relativeIndex ~= frameID - 1) then
        --[[ The relativeIndex isn't the icon before, this means that a new row begins. Set relativePoint = point,
             because otherwise the icon would be attached to the wrong side of the auraType frame.
             Also reset the xOffset, since we're at the beginning of a row. ]]--
        relativePoint = point;
        relativeTo = frame:GetParent();
        xOffset = 0;
    else
        -- Set the relative Frame (the preceding buff) and reset yOffset, because positioning is relative to the preceding frame.
        relativeTo = self.cooldownFrame["Cooldown" .. relativeIndex]
        yOffset = 0;
    end

    -- Set up the frame. The Aura is finally done!
    frame:SetWidth(size);
    frame:SetHeight(size);

    if (frame.stealable) then
        frame.stealable:SetWidth(size + 5, size + 5);
        --frame.stealable:SetHeight(size + 5, size + 5);
    end

    -- Now set the new anchor and show the icon.
    frame:ClearAllPoints();
    frame:SetPoint(point, relativeTo, relativePoint, xOffset, yOffset);
    frame:Show();
end

function onFrameClick(self, buttonName)
    if not (buttonName == "LeftButton" and IsAltKeyDown()) then return end
    CDBar:UpdateCooldownFrames()
    local targetChannel
    if CDBar.isClassic then
        if UnitInBattleground("player") then
            targetChannel = "INSTANCE_CHAT"
        elseif UnitInRaid("player") then
            targetChannel = "RAID"
        elseif UnitInParty("player") then
            local isInstanceGroup = IsInGroup(LE_PARTY_CATEGORY_INSTANCE)
            if isInstanceGroup then
                targetChannel = "INSTANCE_CHAT"
            else
                targetChannel = "PARTY"
            end
        else
            if IsInInstance() then
                targetChannel = "SAY"
            end
        end
    elseif CDBar.isTBC then
        if UnitInBattleground("player") then
            targetChannel = "CHAT_MSG_BATTLEGROUND"
        elseif UnitInRaid("player") then
            targetChannel = "RAID"
        elseif GetNumPartyMembers () > 0 then
            targetChannel = "PARTY"
        end
    end

    local chatMessage = "[CDBar] "
    if self.type ~= "spell" then
        chatMessage = CDBar:stringTitlize(self.slot) .. " "
    end
    if self.remainingCooldown > 50000 then
        chatMessage = chatMessage .. self.spellName .. " ready"
    elseif self.remainingCooldown > 60 then
        chatMessage = chatMessage .. self.spellName .. " CD: " .. math.ceil(self.remainingCooldown / 60) .. " min left"
    elseif self.remainingCooldown > 10 then
        chatMessage = chatMessage .. self.spellName .. " CD: " .. math.ceil(self.remainingCooldown) .. " sec left"
    elseif self.remainingCooldown < 10 then
        chatMessage = chatMessage .. self.spellName .. " CD: " .. string.format("%.1f", self.remainingCooldown) .. " sec left"
    end
    if targetChannel ~= nil then
        SendChatMessage(chatMessage, targetChannel);
    else
        print(chatMessage)
    end
end
