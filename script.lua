local nomeGol = "Goal" -- Troque pelo nome exato do gol no mapa, quando souber
local codigos = {"SAEXSHIDOU", "ISAGISHOES", "GOALMET"}

local autoFarmAtivo = false

local ScreenGui = Instance.new("ScreenGui")
local SideFrame = Instance.new("Frame")
local ToggleButton = Instance.new("TextButton")
local SettingsButton = Instance.new("TextButton")
local ConfigFrame = Instance.new("Frame")
local RedeemButton = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

SideFrame.Size = UDim2.new(0, 200, 1, 0)
SideFrame.Position = UDim2.new(0, 0, 0, 0)
SideFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SideFrame.Parent = ScreenGui

ToggleButton.Size = UDim2.new(1, 0, 0, 50)
ToggleButton.Text = "Auto Farm Gol: OFF"
ToggleButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.Parent = SideFrame
ToggleButton.MouseButton1Click:Connect(function()
    autoFarmAtivo = not autoFarmAtivo
    if autoFarmAtivo then
        ToggleButton.Text = "Auto Farm Gol: ON"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
        spawn(function()
            while autoFarmAtivo do
                local player = game.Players.LocalPlayer
                local char = player.Character
                if char and char:FindFirstChild("HumanoidRootPart") then
                    local gol = workspace:FindFirstChild(nomeGol)
                    if gol then
                        char:MoveTo(gol.Position)
                    end
