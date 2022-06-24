local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")
local Enable = false
local Light

UserInputService.InputBegan:Connect(function(Input)
if Input.KeyCode == Enum.KeyCode.F then
		if not Enable then
			Enable = true
			Light = Instance.new("SpotLight", Character.HumanoidRootPart)
		Light.Brightness = 2
			script.Sound:Play() -- Flashight Open/Close Sound
		else 
			Light:Destroy()
			Enable = false
			script.Sound:Play() -- Flashight Open/Close Sound
		end
	end
end)
