local TweenService = game:GetService("TweenService")

local MainGUI = script.Parent
local MenuFrame = MainGUI.MenuFrame
local MenuButton = MainGUI.MenuButton

local debounce = false
local open = false

local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Back)

local closedX = 1.5

MenuFrame.Position = UDim2.fromScale(closedX, 0.5

MenuButton.Activated:Connect(function()
	if debounce == false then
		debounce = true
		
		local x = if open then -0.5 else 0.5
		
		local tween = TweenService:Create(MenuFrame, tweenInfo, {
			Position = UDim2.fromScale(x, 0.5)
		})
		tween:Play()
		
		open = not open
		task.wait(0.5)
		debounce = false
	end
end)
