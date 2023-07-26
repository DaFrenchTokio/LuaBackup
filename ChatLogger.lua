--[[

Credit To Sukki [https://v3rmillion.net/member.php?action=profile&uid=902799] For Original Script!
Edited By Me [Damix2131]

Original Source: https://v3rmillion.net/showthread.php?tid=1180543
Meow —ฅ/ᐠ. ̫ .ᐟ\ฅ —

--]]

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ChatEvents = ReplicatedStorage.DefaultChatSystemChatEvents
local OnClientEvent = ChatEvents.OnMessageDoneFiltering.OnClientEvent
OnClientEvent:Connect(
    function(object)
        print(string.format("%s : %s", object.FromSpeaker, object.Message or ""))
        if not (isfile("ChatLogger.txt")) then
            writefile("ChatLogger.txt", "Logging Chat Bypassers!")
        end
        if appendfile then
            appendfile("ChatLogger.txt", "\n" .. string.format("%s : %s", object.FromSpeaker, object.Message or ""))
        end
    end
)
