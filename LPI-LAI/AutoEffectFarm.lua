_G.AutoKill = false -- turn on if you want to keep dying constantly
_G.Method = 1 -- 1. Set Humanoid To 0, 2. Teleport To Void
_G.RespawnTime = 0.5 -- Change This To Respawn Quicker

local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local Root = Character.HumanoidRootPart
local PlayerGui = Player.PlayerGui
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function Respawn()
    if Humanoid.Health == 0 then
        task.wait(RespawnTime)
        ReplicatedStorage:WaitForChild("StatAPI"):FireServer("LoadChar", 1)
    end
end

while true do
    task.wait()
    pcall(
        function()
            local CoreGui = PlayerGui:WaitForChild("CoreGui")
            local Main = CoreGui.InGameShop.Main
            local Check1 = Main.Guide.TextLabel
            local RollEffect = ReplicatedStorage:WaitForChild("RollEffect")

            local Text1 = "Collected 12 of 13 Purchasable Effects"
            local Text2 = "Collected 13 of 13 Purchasable Effects"
            local Text3 = "Roll For 10 Fames"

            if Player.leaderstats.Fame.Value >= 10 then
                if Check1.Text == Text1 then
                    print("You Need To Get WON Badge To Get Last Effect. || Script Made By Damix :3")
                    break
                elseif Check1.Text == Text2 then
                    print("Already Got Them All! || Script Made By Damix :3")
                    break
                end
                RollEffect:InvokeServer("Roll")
                if CoreGui.InGameShop.RollButton.TextLabel.Text ~= Text3 then
                    print(CoreGui.InGameShop.RollButton.TextLabel.Text .. " || Script Made By Damix :3")
                end
            elseif Player.leaderstats.Fame.Value <= 10 then
                if Check1.Text ~= Text2 then
                    if Check1.Text ~= Text1 then
                        if AutoKill then
                            if Humanoid.Health ~= 0 then
                                if Method == 1 then
                                    Humanoid.Health = 0
                                    Respawn()
                                end
                                if Method == 2 then
                                    if Root then
                                        Root.CFrame = CFrame.new(0, -15000, 0)
                                    end
                                    Respawn()
                                end
                            end
                        end
                    end
                end
            end
        end
    )
end
