library = {}

function library:CreateWindows()
    local ScreenGui = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local head = Instance.new("Folder")
    local TextLabel = Instance.new("TextLabel")
    local ImageLabel = Instance.new("ImageLabel")
    local struct = Instance.new("Folder")
    local Frame = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local Frame2 = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local UICorner_4 = Instance.new("UICorner")
    local UIGridLayout = Instance.new("UIGridLayout")
    local mon = Instance.new("Folder")
    local Frame_2 = Instance.new("Frame")
    local UICorner_5 = Instance.new("UICorner")

    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Main.Name = "Main"
    Main.Parent = ScreenGui
    Main.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
    Main.Position = UDim2.new(0.266063064, 0, 0.231975332, 0)
    Main.Size = UDim2.new(0, 0, 0, 0)

    UICorner.Parent = Main

    head.Name = "head"
    head.Parent = Main

    TextLabel.Parent = head
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.102643386, 0, 0.026028052, 0)
    TextLabel.Size = UDim2.new(0, 128, 0, 32)
    TextLabel.Visible = false
    TextLabel.Font = Enum.Font.SourceSansBold
    TextLabel.Text = "Gay Hub - Private"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 20.000

    ImageLabel.Parent = head
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(0.0220577307, 0, 0.0262947232, 0)
    ImageLabel.Size = UDim2.new(0, 38, 0, 33)
    ImageLabel.Visible = false
    ImageLabel.Image = "rbxassetid://12466995071"

    struct.Name = "struct"
    struct.Parent = Main

    Frame.Parent = struct
    Frame.BackgroundColor3 = Color3.fromRGB(255, 89, 164)
    Frame.BorderColor3 = Color3.fromRGB(49, 53, 31)
    Frame.Position = UDim2.new(0.0478760228, 0, 0.13978906, 0)
    Frame.Size = UDim2.new(0, 88, 0, 218)
    Frame.Visible = false

    UICorner_2.Parent = Frame

    Frame2.Name = "Frame2"
    Frame2.Parent = struct
    Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame2.BackgroundTransparency = 0.900
    Frame2.Position = UDim2.new(0.0463848971, 0, 0.16852437, 0)
    Frame2.Size = UDim2.new(0, 89, 0, 209)
    Frame2.Visible = false

    UICorner_3.Parent = Frame2
    UICorner_4.Parent = TextButton

    UIGridLayout.Parent = Frame2
    UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout.CellPadding = UDim2.new(0, 55, 0, 10)
    UIGridLayout.CellSize = UDim2.new(0, 80, 0, 20)

    mon.Name = "mon"
    mon.Parent = Main

    Frame_2.Parent = mon
    Frame_2.BackgroundColor3 = Color3.fromRGB(151, 210, 255)
    Frame_2.Position = UDim2.new(0.232040823, 0, 0.138117716, 0)
    Frame_2.Size = UDim2.new(0, 390, 0, 218)
    Frame_2.Visible = false

    UICorner_5.Parent = Frame_2


    local function ITXJ_fake_script()
        local script = Instance.new('LocalScript', ScreenGui)

        local loder = script.Parent.Parent.ScreenGui.Main
        loder:TweenSize(UDim2.new(0, 537,0, 296), 2, "Sine", 4)
        
        wait(4)
        script.Parent.Parent.ScreenGui.Main.head.ImageLabel.Visible = true
        script.Parent.Parent.ScreenGui.Main.head.TextLabel.Visible = true
        script.Parent.Parent.ScreenGui.Main.struct.Frame.Visible = true
        script.Parent.Parent.ScreenGui.Main.struct.Frame2.Visible = true
        script.Parent.Parent.ScreenGui.Main.mon.Frame.Visible = true
        
        
        local UIS = game:GetService('UserInputService')
        local frame = loder
        local dragToggle = nil
        local dragSpeed = 0.25
        local dragStart = nil
        local startPos = nil
        
        local function updateInput(input)
            local delta = input.Position - dragStart
            local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
        end
        
        frame.InputBegan:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
                dragToggle = true
                dragStart = input.Position
                startPos = frame.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragToggle = false
                    end
                end)
            end
        end)
        
        UIS.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                if dragToggle then
                    updateInput(input)
                    end
                end
            end)
        end
        coroutine.wrap(ITXJ_fake_script)()

    local GayLib = {}

    function GayLib:CreateTab(text)
        local TextButton = Instance.new("TextButton")

        TextButton.Parent = Frame2
        TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.ClipsDescendants = true
        TextButton.Position = UDim2.new(0.404494375, 0, 0.377812386, 0)
        TextButton.Size = UDim2.new(0, 100, 0, 46)
        TextButton.Font = Enum.Font.SourceSans
        TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton.TextSize = 14.000
        TextButton.Text = text
    end
    return GayLib
end
