--[[
credits to https://v3rmillion.net/member.php?action=profile&uid=508311 [asleep]

i just removed the gui

https://v3rmillion.net/showthread.php?tid=1125226 -- original source
]]

function Morph(UserId)
	local appearance = game.Players:GetCharacterAppearanceAsync(UserId)
	local player = game.Players.LocalPlayer

	for i,v in pairs(player.Character:GetChildren()) do
		if v:IsA("Accessory") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("CharacterMesh") or v:IsA("BodyColors") then
			v:Destroy()
		end
	end

	if player.Character.Head:FindFirstChild("face") then
		player.Character.Head.face:Destroy()
	end

	for i,v in pairs(appearance:GetChildren()) do
		if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("BodyColors") then
			v.Parent = player.Character
		elseif v:IsA("Accessory") then
			player.Character.Humanoid:AddAccessory(v)
		elseif v.Name == "R6" then
			if player.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				v:FindFirstChildOfClass("CharacterMesh").Parent = player.Character
			end
		elseif v.Name == "R15" then
			if player.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
				v:FindFirstChildOfClass("CharacterMesh").Parent = player.Character
			end
		end
	end

	if appearance:FindFirstChild("face") then
		appearance.face.Parent = player.Character.Head
	else
		local face = Instance.new("Decal")
		face.Face = "Front"
		face.Name = "face"
		face.Texture = "rbxasset://textures/face.png"
		face.Transparency = 0
		face.Parent = player.Character.Head
	end

	-- Reload Character
	local parent = player.Character.Parent
	player.Character.Parent = nil
	player.Character.Parent = parent
end
