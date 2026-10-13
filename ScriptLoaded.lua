
-- SCRIPT LOADED | Modern UI
-- Use as a LocalScript in your own Roblox game.

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local GROUP_LINK = "YOUR_VERIFIED_ROBLOX_GROUP_URL"

local playerGui = player:WaitForChild("PlayerGui")

local oldGui = playerGui:FindFirstChild("ScriptLoadedGUI")
if oldGui then
    oldGui:Destroy()
end

local gui = Instance.new("ScreenGui")
gui.Name = "ScriptLoadedGUI"
gui.ResetOnSpawn = false
gui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Name = "Main"
frame.Size = UDim2.fromOffset(370, 240)
frame.Position = UDim2.new(0.5, -185, 0.5, -120)
frame.BackgroundColor3 = Color3.fromRGB(13, 16, 23)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 16)
corner.Parent = frame

local outline = Instance.new("UIStroke")
outline.Color = Color3.fromRGB(0, 230, 160)
outline.Transparency = 0.55
outline.Thickness = 1.2
outline.Parent = frame

-- Header
local header = Instance.new("Frame")
header.Size = UDim2.new(1, -28, 0, 64)
header.Position = UDim2.fromOffset(14, 12)
header.BackgroundTransparency = 1
header.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -50, 0, 30)
title.BackgroundTransparency = 1
title.Text = "SCRIPT LOADED"
title.TextColor3 = Color3.fromRGB(0, 255, 170)
title.TextSize = 25
title.Font = Enum.Font.GothamBold
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = header

local subtitle = Instance.new("TextLabel")
subtitle.Position = UDim2.fromOffset(0, 33)
subtitle.Size = UDim2.new(1, 0, 0, 20)
subtitle.BackgroundTransparency = 1
subtitle.Text = "Script dashboard  •  v1.0"
subtitle.TextColor3 = Color3.fromRGB(145, 160, 180)
subtitle.TextSize = 12
subtitle.Font = Enum.Font.Gotham
subtitle.TextXAlignment = Enum.TextXAlignment.Left
subtitle.Parent = header

local status = Instance.new("TextLabel")
status.Size = UDim2.fromOffset(48, 22)
status.Position = UDim2.new(1, -48, 0, 3)
status.BackgroundColor3 = Color3.fromRGB(20, 65, 52)
status.Text = "READY"
status.TextColor3 = Color3.fromRGB(0, 255, 170)
status.TextSize = 10
status.Font = Enum.Font.GothamBold
status.Parent = header

local statusCorner = Instance.new("UICorner")
statusCorner.CornerRadius = UDim.new(0, 7)
statusCorner.Parent = status

-- Content panel
local panel = Instance.new("Frame")
panel.Position = UDim2.fromOffset(14, 84)
panel.Size = UDim2.new(1, -28, 0, 112)
panel.BackgroundColor3 = Color3.fromRGB(21, 28, 39)
panel.BorderSizePixel = 0
panel.Parent = frame

local panelCorner = Instance.new("UICorner")
panelCorner.CornerRadius = UDim.new(0, 12)
panelCorner.Parent = panel

local heading = Instance.new("TextLabel")
heading.Position = UDim2.fromOffset(14, 10)
heading.Size = UDim2.new(1, -28, 0, 24)
heading.BackgroundTransparency = 1
heading.Text = "Unlock Access"
heading.TextColor3 = Color3.fromRGB(244, 247, 250)
heading.TextSize = 17
heading.Font = Enum.Font.GothamBold
heading.TextXAlignment = Enum.TextXAlignment.Left
heading.Parent = panel

local description = Instance.new("TextLabel")
description.Position = UDim2.fromOffset(14, 35)
description.Size = UDim2.new(1, -28, 0, 22)
description.BackgroundTransparency = 1
description.Text = "Join our community to get access."
description.TextColor3 = Color3.fromRGB(169, 181, 197)
description.TextSize = 12
description.Font = Enum.Font.Gotham
description.TextXAlignment = Enum.TextXAlignment.Left
description.Parent = panel

local button = Instance.new("TextButton")
button.Position = UDim2.fromOffset(14, 66)
button.Size = UDim2.new(1, -28, 0, 34)
button.BackgroundColor3 = Color3.fromRGB(0, 217, 154)
button.Text = "JOIN GROUP  →"
button.TextColor3 = Color3.fromRGB(7, 19, 15)
button.TextSize = 13
button.Font = Enum.Font.GothamBold
button.AutoButtonColor = true
button.Parent = panel

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 8)
buttonCorner.Parent = button

-- Link box
local linkBox = Instance.new("TextBox")
linkBox.Position = UDim2.fromOffset(14, 204)
linkBox.Size = UDim2.new(1, -28, 0, 26)
linkBox.BackgroundColor3 = Color3.fromRGB(29, 37, 50)
linkBox.TextColor3 = Color3.fromRGB(235, 241, 248)
linkBox.PlaceholderText = "Group link appears here"
linkBox.PlaceholderColor3 = Color3.fromRGB(120, 135, 153)
linkBox.Text = ""
linkBox.TextSize = 11
linkBox.Font = Enum.Font.Gotham
linkBox.ClearTextOnFocus = false
linkBox.TextEditable = true
linkBox.Visible = false
linkBox.Parent = frame

local linkCorner = Instance.new("UICorner")
linkCorner.CornerRadius = UDim.new(0, 7)
linkCorner.Parent = linkBox

button.Activated:Connect(function()
    linkBox.Text = GROUP_LINK
    linkBox.Visible = true
    button.Text = "COPY LINK BELOW"
    description.Text = "Select the link and press Ctrl+C."
    status.Text = "LINK"
    status.TextColor3 = Color3.fromRGB(0, 255, 170)

    linkBox:CaptureFocus()
    linkBox.SelectionStart = 1
    linkBox.CursorPosition = #GROUP_LINK + 1
end)
