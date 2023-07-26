-- Gui to Lua
-- Version: 3.2

-- Instances:

local ROBLOXAntiPowerWaste = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")

--Properties:

ROBLOXAntiPowerWaste.Name = "ROBLOX Anti Power Waste"
ROBLOXAntiPowerWaste.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ROBLOXAntiPowerWaste.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ROBLOXAntiPowerWaste.ResetOnSpawn = false

Frame.Parent = ROBLOXAntiPowerWaste
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(-1.3882153, 0, -6.10054398, 0)
Frame.Size = UDim2.new(10, 100, 10, 100)

-- Scripts:

local function ISPK_fake_script() -- Frame.LocalScript 
    local script = Instance.new('LocalScript', Frame)

    local StarterGui = game:GetService("StarterGui")
    local UserInputService = game:GetService("UserInputService")
    local Frame = script.Parent
    local Mouse = game.Players.LocalPlayer:GetMouse()
    local function disablecoreguis(value)
        StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, value)
    end
    UserInputService.WindowFocused:Connect(function()
        Frame.Visible = false
        disablecoreguis(true)
        setfpscap(999999)
    end)
    UserInputService.WindowFocusReleased:Connect(function()
        Frame.Visible = true
        disablecoreguis(false)
        setfpscap(5)
    end)
end
coroutine.wrap(ISPK_fake_script)()

Frame.Visible = false
