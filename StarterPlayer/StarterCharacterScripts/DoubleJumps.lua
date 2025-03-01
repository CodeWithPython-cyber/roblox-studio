local UIS = game:GetService("UserInputService")
local Humanoid = script.Parent:WaitForChild("Humanoid")

local db = true
local CanDoubleJump, DoubleJumped = false, false

local function JumpRequest()
	if db then
		db = false
		
		if CanDoubleJump and not DoubleJumped then
			DoubleJumped = true
			Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		end
		
		task.wait(.2)
		db = true
	end
end

UIS.JumpRequest:Connect(JumpRequest)

local function StateChanged(_, new)
	if new == Enum.HumanoidStateType.Landed then
		CanDoubleJump = false
		DoubleJumped = false
		
	elseif new == Enum.HumanoidStateType.Freefall and not DoubleJumped then
		CanDoubleJump = true
		DoubleJumped = false
	end
end

Humanoid.StateChanged:Connect(StateChanged)
