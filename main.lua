--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]

local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

local LoadingGui = Instance.new("ScreenGui", CoreGui)
local LoadingFrame = Instance.new("Frame", LoadingGui)
local UICorner = Instance.new("UICorner", LoadingFrame)
local LoadingLabel = Instance.new("TextLabel", LoadingFrame)

LoadingGui.ResetOnSpawn = false

LoadingFrame.Size = UDim2.new(0, 250, 0, 100)
LoadingFrame.Position = UDim2.new(0.5, -125, 0.5, -50)
LoadingFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
LoadingFrame.BackgroundTransparency = 0.15

UICorner.CornerRadius = UDim.new(0, 22)

LoadingLabel.Size = UDim2.new(1,0,1,0)
LoadingLabel.BackgroundTransparency = 1
LoadingLabel.Font = Enum.Font.GothamSemibold
LoadingLabel.TextSize = 24
LoadingLabel.TextColor3 = Color3.fromRGB(40,40,40)
LoadingLabel.Text = "Loading…"

-- Pulse Animation
task.spawn(function()
	while LoadingGui do
		TweenService:Create(LoadingLabel, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
			TextTransparency = 0.4
		}):Play()
		task.wait(1)
		TweenService:Create(LoadingLabel, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
			TextTransparency = 0
		}):Play()
		task.wait(1)
	end
end)

task.wait(2) -- Loading time

TweenService:Create(LoadingFrame, TweenInfo.new(1, Enum.EasingStyle.Quint), {
	BackgroundTransparency = 1
}):Play()
TweenService:Create(LoadingLabel, TweenInfo.new(1), {
	TextTransparency = 1
}):Play()

task.wait(1)
LoadingGui:Destroy()

local MainGui = Instance.new("ScreenGui", CoreGui)
MainGui.ResetOnSpawn = false

local Window = Instance.new("Frame", MainGui)
local WindowCorner = Instance.new("UICorner", Window)
local WindowStroke = Instance.new("UIStroke", Window)

local Title = Instance.new("TextLabel", Window)
local StartBtn = Instance.new("TextButton", Window)
local StopBtn = Instance.new("TextButton", Window)
local CloseBtn = Instance.new("TextButton", Window) -- x-Button

Window.Size = UDim2.new(0, 240, 0, 160)
Window.Position = UDim2.new(0.07, 0, 0.15, 0)
Window.BackgroundColor3 = Color3.fromRGB(255,255,255)
Window.BackgroundTransparency = 0.18
Window.Active = true
Window.Draggable = true

WindowCorner.CornerRadius = UDim.new(0, 20)
WindowStroke.Color = Color3.fromRGB(210,210,210)
WindowStroke.Thickness = 1.4
WindowStroke.Transparency = 0.3

Title.Size = UDim2.new(1,0,0,40)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamSemibold
Title.Text = "PUPSIK"
Title.TextSize = 20
Title.TextColor3 = Color3.fromRGB(35,35,35)

local function StyleBtn(Btn, txt, col, y)
	Btn.Size = UDim2.new(1, -30, 0, 45)
	Btn.Position = UDim2.new(0, 15, 0, y)
	Btn.BackgroundColor3 = col
	Btn.Text = txt
	Btn.TextColor3 = Color3.fromRGB(255,255,255)
	Btn.Font = Enum.Font.GothamMedium
	Btn.TextSize = 17
	
	local c = Instance.new("UICorner", Btn)
	c.CornerRadius = UDim.new(0, 14)

	-- Hover Animation
	Btn.MouseEnter:Connect(function()
		TweenService:Create(Btn, TweenInfo.new(0.15), {BackgroundTransparency = 0.07}):Play()
	end)
	Btn.MouseLeave:Connect(function()
		TweenService:Create(Btn, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play()
	end)
end

StyleBtn(StartBtn, "Start", Color3.fromRGB(52,199,89), 50)
StyleBtn(StopBtn, "Stop", Color3.fromRGB(255,59,48), 100)

-- x-Button für Schließen
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 5)
CloseBtn.BackgroundColor3 = Color3.fromRGB(255,59,48)
CloseBtn.Text = "✕"
CloseBtn.TextColor3 = Color3.fromRGB(255,255,255)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextSize = 18

local CloseCorner = Instance.new("UICorner", CloseBtn)
CloseCorner.CornerRadius = UDim.new(0, 8)

-- Hover Animation
CloseBtn.MouseEnter:Connect(function()
	TweenService:Create(CloseBtn, TweenInfo.new(0.15), {BackgroundTransparency = 0.1}):Play()
end)
CloseBtn.MouseLeave:Connect(function()
	TweenService:Create(CloseBtn, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play()
end)

CloseBtn.MouseButton1Click:Connect(function()
	MainGui:Destroy()
end)

local args = {buffer.fromstring("\001"), "\001", {{"50885", {{"PlayerRunEnded", {
	["e96c7ace-6d86-47b4-9cbe-c969fdd64c6f"] = true,
	["688f4da2-3b38-4c85-8def-6a7a3d4b1135"] = true,
	["2c2743b7-ab44-4507-b550-01523835ed4d"] = true,
	["b9867df9-613e-41bf-b041-70fbf5cc5111"] = true,
	["7fa91067-8dd0-42ff-a7de-9248f420918b"] = true,
	["d06bc1d4-5ffe-4fca-baf2-3d8660d9fcec"] = true,
	["b67e68ee-cefc-4bbf-933e-237b8e0a9d50"] = true,
	["bd8b53a3-f51c-4811-96ee-2cf7aa470c31"] = true,
	["40936f26-bfed-43b8-a8db-f1dcb99db555"] = true,
	["253bcf7d-4661-4d50-8dd7-290e27c0b4da"] = true,
	["c0e10199-9425-4455-8a38-cc3528472a8a"] = true,
	["80561910-8adb-4537-bed8-b5a424c56b18"] = true,
	["9e5ff274-6eb0-4ca5-b6c3-5e981351b187"] = true,
	["7f3eebde-d8eb-44ce-886f-4aa808073058"] = true,
	["df99f2a2-d3b5-481c-8f55-daa2a26318e3"] = true,
	["93536128-1b29-4cc6-b51e-a74de0874944"] = true,
	["891e45ab-5308-4eb8-b84e-6c3da1e34ff5"] = true,
	["dd214782-4de6-47d9-bc55-b25db6423b94"] = true,
	["33e933e1-c891-448f-a3c6-08af11f43208"] = true,
	["c2d44b15-efc4-48c9-80e4-2b06d456c045"] = true,
	["2ab2a8d8-bcae-49e0-ae1f-b276f3022c00"] = true,
	["fc5ab595-c233-48b4-be02-aca2d9019cd0"] = true,
	["089c507c-3a18-464f-8a36-10f36e22a0a0"] = true
}, 229.94857788085938, 4, "Infinite"}}}}}

local event = game:GetService("ReplicatedStorage")
	:WaitForChild("Modules")
	:WaitForChild("Public")
	:WaitForChild("Warp")
	:WaitForChild("Index")
	:WaitForChild("Event")
	:WaitForChild("Request")

local running = false

local function loop()
	while running do
		event:FireServer(unpack(args))
		task.wait(0.1)
	end
end

StartBtn.MouseButton1Click:Connect(function()
	if not running then
		running = true
		task.spawn(loop)
	end
end)

StopBtn.MouseButton1Click:Connect(function()
	running = false
end)
