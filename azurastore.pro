local blur = Instance.new("BlurEffect", game.Lighting)
blur.Size = 100

local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
ScreenGui.Parent = game.CoreGui
ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.5, -(303 / 2), 0.5, -(263 / 2))
ImageLabel.Rotation = 0
ImageLabel.Size = UDim2.new(0, 303, 0, 263)
ImageLabel.Image = "rbxassetid://121351109254854"
ImageLabel.ImageTransparency = 1

for i = 1, 50, 2 do
    blur.Size = i
    ImageLabel.ImageTransparency = ImageLabel.ImageTransparency - 0.1
    wait()
end
wait(0.1)

for i = 1, 50, 2 do
    blur.Size = 50 - i
    ImageLabel.ImageTransparency = ImageLabel.ImageTransparency + 0.1
    wait()
end

blur:Destroy()
ScreenGui:Destroy()

task.wait(.1)

local library = {}
local UIConfig = {Bind = Enum.KeyCode.RightControl}
local chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
local length = 20
local randomString = ""

math.randomseed(os.time())

charTable = {}
for c in chars:gmatch "." do
    table.insert(charTable, c)
end

for i = 1, length do
    randomString = randomString .. charTable[math.random(1, #charTable)]
end

for i, v in pairs(game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules"):GetChildren()) do
    if v.ClassName == "ScreenGui" then
        for i1, v1 in pairs(v:GetChildren()) do
            if v1.Name == "Main" then
                do
                    local ui = v
                    if ui then
                        ui:Destroy()
                    end
                end
            end
        end
    end
end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

function dragify(Frame, object)
    dragToggle = nil
    dragSpeed = .25
    dragInput = nil
    dragStart = nil
    dragPos = nil

    function updateInput(input)
        Delta = input.Position - dragStart
        Position =
            UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(object, TweenInfo.new(dragSpeed), {Position = Position}):Play()
    end

    Frame.InputBegan:Connect(
        function(input)
            if
                (input.UserInputType == Enum.UserInputType.MouseButton1 or
                    input.UserInputType == Enum.UserInputType.Touch)
             then
                dragToggle = true
                dragStart = input.Position
                startPos = object.Position
                input.Changed:Connect(
                    function()
                        if (input.UserInputState == Enum.UserInputState.End) then
                            dragToggle = false
                        end
                    end
                )
            end
        end
    )

    Frame.InputChanged:Connect(
        function(input)
            if
                (input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch)
             then
                dragInput = input
            end
        end
    )

    game:GetService("UserInputService").InputChanged:Connect(
        function(input)
            if (input == dragInput and dragToggle) then
                updateInput(input)
            end
        end
    )
end

local UI = Instance.new("ScreenGui")
UI.Name = randomString
UI.Parent = game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules")
UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

if syn then
   syn.protect_gui(UI)
end

function library:Destroy()
    library:Destroy()
end

function library:UI()
    local Main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Logo = Instance.new("ImageLabel")
    local Top = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Title2 = Instance.new("TextLabel")
    local TabHolder = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local TabContainer = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local UIPadding = Instance.new("UIPadding")

    Main.Name = "Main"
    Main.Parent = UI
    Main.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Main.Size = UDim2.new(0, 520, 0, 650)
    Main.ClipsDescendants = true
    Main.AnchorPoint = Vector2.new(0.5, 0.5)

    UICorner.CornerRadius = UDim.new(0, 6)
    UICorner.Parent = Main

    local UiToggle_UiStroke1 = Instance.new("UIStroke")
    UiToggle_UiStroke1.Color = Color3.fromRGB(25,25,25)
    UiToggle_UiStroke1.Thickness = 2
    UiToggle_UiStroke1.Name = "UiToggle_UiStroke1"
    UiToggle_UiStroke1.Parent = Main

    Logo.Name = "Logo"
    Logo.Parent = Main
    Logo.BackgroundTransparency = 1
    Logo.Position = UDim2.new(0.5, 0, 0.5, 0)
    Logo.Size = UDim2.new(0, 520, 0, 650)
    Logo.AnchorPoint = Vector2.new(0.5, 0.5)
    Logo.Image = "rbxassetid://131901534017934"
    Logo.ImageTransparency = 0.5
    Logo.ZIndex = 0

    Top.Name = "Top"
    Top.Parent = Main
    Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Top.BackgroundTransparency = 1
    Top.Position = UDim2.new(0.021956088, 0, 0.0133333337, 0)
    Top.Size = UDim2.new(0, 490, 0, 39)

    Title.Name = "Title"
    Title.Parent = Top
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.Position = UDim2.new(0, 20, 0, 5)
    Title.Size = UDim2.new(0, 483, 0, 31)
    Title.Font = Enum.Font.GothamMedium
    Title.Text = "GENERAL TIB"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 14.000
    Title.TextWrapped = true
    Title.TextXAlignment = Enum.TextXAlignment.Left

    Title2.Name = "Title"
    Title2.Parent = Top
    Title2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title2.BackgroundTransparency = 1.000
    Title2.Position = UDim2.new(0, 400, 0, 5)
    Title2.Size = UDim2.new(0, 483, 0, 31)
    Title2.Font = Enum.Font.GothamMedium
    Title2.Text = "Ctrl Right on/off ui"
    Title2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title2.TextSize = 10
    Title2.TextWrapped = true
    Title2.TextXAlignment = Enum.TextXAlignment.Left

    TabHolder.Name = "TabHolder"
    TabHolder.Parent = Main
    TabHolder.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    TabHolder.Position = UDim2.new(0.021956088, 0, 0.09, 0)
    TabHolder.Size = UDim2.new(0, 490, 0, 40)

    UICorner_2.CornerRadius = UDim.new(0, 6)
    UICorner_2.Parent = TabHolder

    TabContainer.Name = "TabContainer"
    TabContainer.Parent = TabHolder
    TabContainer.Active = true
    TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabContainer.BackgroundTransparency = 1.000
    TabContainer.Size = UDim2.new(0, 490, 0, 40)
    TabContainer.CanvasSize = UDim2.new(2, 0, 0, 0)
    TabContainer.ScrollBarThickness = 0

    UIListLayout.Parent = TabContainer
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 10)

    UIPadding.Parent = TabContainer
    UIPadding.PaddingLeft = UDim.new(0, 5)
    UIPadding.PaddingTop = UDim.new(0, 5)

    UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
        function()
            TabContainer.CanvasSize = UDim2.new(0, UIListLayout.AbsoluteContentSize.X + 20, 0, 0)
        end
    )

    local Bottom = Instance.new("Frame")
    Bottom.Name = "Bottom"
    Bottom.Parent = Main
    Bottom.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Bottom.BackgroundTransparency = 0.9
    Bottom.Position = UDim2.new(0.021956088, 0, 0.158, 0)
    Bottom.Size = UDim2.new(0, 490, 0, 532)

    local uitoggled = false
    UserInputService.InputBegan:Connect(
        function(io, p)
            if io.KeyCode == UIConfig.Bind then
                if uitoggled == false then
                    Main:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 1, true)
                    uitoggled = true
                    wait(.5)
                    UI.Enabled = false
                else
                    Main:TweenSize(
                        UDim2.new(0, 520, 0, 650),
                        Enum.EasingDirection.Out,
                        Enum.EasingStyle.Quart,
                        1,
                        true
                    )
                    UI.Enabled = true
                    uitoggled = false
                end
            end
        end
    )

    dragify(Top, Main)
    local tabs = {}
    local S = false

    function tabs:Tab(Name, icon)
        local FrameTab = Instance.new("Frame")
        local Tab = Instance.new("TextButton")
        local UICorner_3 = Instance.new("UICorner")
        local TextLabel = Instance.new("TextLabel")

        FrameTab.Name = "FrameTab"
        FrameTab.Parent = Tab
        FrameTab.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
        FrameTab.Size = UDim2.new(0, 100, 0, 30)
        local UICorner_Tab = Instance.new("UICorner")
        UICorner_Tab.CornerRadius = UDim.new(0, 3)
        UICorner_Tab.Parent = FrameTab

        Tab.Name = "Tab"
        Tab.Parent = TabContainer
        Tab.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
        Tab.Size = UDim2.new(0, 100, 0, 30)
        Tab.BackgroundTransparency = 1
        Tab.Text = ""

        UICorner_3.CornerRadius = UDim.new(0, 3)
        UICorner_3.Parent = Tab

        TextLabel.Parent = Tab
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.Position = UDim2.new(0.01, 0, 0.01, 0)
        TextLabel.Size = UDim2.new(0, 90, 0, 27)
        TextLabel.Font = Enum.Font.GothamBold
        TextLabel.Text = Name
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 12.300
        TextLabel.TextTransparency = 0.200
        TextLabel.TextXAlignment = Enum.TextXAlignment.Center

        local Page = Instance.new("ScrollingFrame")
        local Left = Instance.new("ScrollingFrame")
        local Right = Instance.new("ScrollingFrame")
        local UIListLayout_5 = Instance.new("UIListLayout")
        local UIPadding_5 = Instance.new("UIPadding")

        Page.Name = "Page"
        Page.Parent = Bottom
        Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Page.BackgroundTransparency = 1.000
        Page.Size = UDim2.new(0, 490, 0, 532)
        Page.ScrollBarThickness = 0
        Page.CanvasSize = UDim2.new(0, 0, 0, 0)
        Page.Visible = false

        Left.Name = "Left"
        Left.Parent = Page
        Left.Active = true
        Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Left.BackgroundTransparency = 1.000
        Left.Size = UDim2.new(0, 240, 0, 532)
        Left.ScrollBarThickness = 0
        Left.CanvasSize = UDim2.new(0, 0, 0, 0)

        Right.Name = "Right"
        Right.Parent = Page
        Right.Active = true
        Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Right.BackgroundTransparency = 1.000
        Right.Position = UDim2.new(0.5, 0, 0, 0)
        Right.Size = UDim2.new(0, 240, 0, 532)
        Right.ScrollBarThickness = 0
        Right.CanvasSize = UDim2.new(0, 0, 0, 0)

        local LeftList = Instance.new("UIListLayout")
        local RightList = Instance.new("UIListLayout")

        LeftList.Parent = Left
        LeftList.SortOrder = Enum.SortOrder.LayoutOrder
        LeftList.Padding = UDim.new(0, 8)

        RightList.Parent = Right
        RightList.SortOrder = Enum.SortOrder.LayoutOrder
        RightList.Padding = UDim.new(0, 8)

        UIListLayout_5.Parent = Page
        UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
        UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_5.Padding = UDim.new(0, 10)

        UIPadding_5.Parent = Page

        LeftList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
            function()
                Left.CanvasSize = UDim2.new(0, 240, 0, LeftList.AbsoluteContentSize.Y)
            end
        )
        RightList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
            function()
                Right.CanvasSize = UDim2.new(0, 240, 0, RightList.AbsoluteContentSize.Y)
            end
        )

        if S == false then
            S = true
            Page.Visible = true
            TextLabel.TextColor3 = Color3.fromRGB(255, 182, 193)
            TextLabel.TextTransparency = 0
        end

        Tab.MouseButton1Click:Connect(
            function()
                for _, x in next, TabContainer:GetChildren() do
                    if x.Name == "Tab" then
                        TweenService:Create(
                            x.TextLabel,
                            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(255, 255, 255)}
                        ):Play()
                        TweenService:Create(
                            x.TextLabel,
                            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextTransparency = 0.2}
                        ):Play()
                        for index, y in next, Bottom:GetChildren() do
                            y.Visible = false
                        end
                    end
                end
                TweenService:Create(
                    TextLabel,
                    TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 182, 193)}
                ):Play()
                TweenService:Create(
                    TextLabel,
                    TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextTransparency = 0}
                ):Play()

                Page.Visible = true
            end
        )

        local function GetSide(Longest)
            if Longest then
                if LeftList.AbsoluteContentSize.Y > RightList.AbsoluteContentSize.Y then
                    return Left
                else
                    return Right
                end
            else
                if LeftList.AbsoluteContentSize.Y > RightList.AbsoluteContentSize.Y then
                    return Right
                else
                    return Left
                end
            end
        end

        LeftList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
            function()
                if GetSide(true).Name == Left.Name then
                    Left.CanvasSize = UDim2.new(0, 0, 0, LeftList.AbsoluteContentSize.Y)
                else
                    Right.CanvasSize = UDim2.new(0, 0, 0, RightList.AbsoluteContentSize.Y)
                end
            end
        )
        RightList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
            function()
                if GetSide(true).Name == Left.Name then
                    Left.CanvasSize = UDim2.new(0, 0, 0, LeftList.AbsoluteContentSize.Y)
                else
                    Right.CanvasSize = UDim2.new(0, 0, 0, RightList.AbsoluteContentSize.Y)
                end
            end
        )

        local sections = {}
        function sections:Section(Name, side)
            local Side2 = nil
            if side then
                Side2 = side:lower() or "left"
            else
                Side2 = GetSide(false)
            end

            local Section = Instance.new("Frame")
            local UICorner_5 = Instance.new("UICorner")
            local Top_2 = Instance.new("Frame")
            local Line = Instance.new("Frame")
            local Sectionname = Instance.new("TextLabel")
            local SectionContainer = Instance.new("Frame")
            local UIListLayout_2 = Instance.new("UIListLayout")
            local UIPadding_2 = Instance.new("UIPadding")

            Section.Name = "Section"
            Section.Parent = Side2 == "left" and Left or Right or GetSide(false)
            Section.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            Section.BackgroundTransparency = 0.7
            Section.ClipsDescendants = true
            Section.Position = UDim2.new(0, 0, 0.1, 0)
            Section.Size = UDim2.new(0, 235, 0, 343)

            UICorner_5.CornerRadius = UDim.new(0, 5)
            UICorner_5.Parent = Section

            Top_2.Name = "Top"
            Top_2.Parent = Section
            Top_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Top_2.BackgroundTransparency = 1.000
            Top_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
            Top_2.Size = UDim2.new(0, 235, 0, 31)

            Line.Name = "Line"
            Line.Parent = Top_2
            Line.BackgroundColor3 = Color3.fromRGB(255, 38, 129)
            Line.BorderSizePixel = 0
            Line.Size = UDim2.new(0, 235, 0, 1)

            Sectionname.Name = "Sectionname"
            Sectionname.Parent = Top_2
            Sectionname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Sectionname.BackgroundTransparency = 1.000
            Sectionname.Position = UDim2.new(0.0591227226, 0, 0.0222222228, 0)
            Sectionname.Size = UDim2.new(0, 225, 0, 24)
            Sectionname.Font = Enum.Font.GothamBold
            Sectionname.Text = Name
            Sectionname.TextColor3 = Color3.fromRGB(255, 255, 255)
            Sectionname.TextSize = 14.000
            Sectionname.TextTransparency = 0.300
            Sectionname.TextXAlignment = Enum.TextXAlignment.Left

            SectionContainer.Name = "SectionContainer"
            SectionContainer.Parent = Top_2
            SectionContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SectionContainer.BackgroundTransparency = 1.000
            SectionContainer.BorderSizePixel = 0
            SectionContainer.Position = UDim2.new(0, 0, 0.796416223, 0)
            SectionContainer.Size = UDim2.new(0, 235, 0, 318)

            UIListLayout_2.Parent = SectionContainer
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_2.Padding = UDim.new(0, 5)

            UIPadding_2.Parent = SectionContainer
            UIPadding_2.PaddingLeft = UDim.new(0, 5)

            UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                function()
                    Section.Size = UDim2.new(1, 0, 0, UIListLayout_2.AbsoluteContentSize.Y + 35)
                end
            )

            local functionitem = {}

            function functionitem:Toggle(Name, default, callback)
                local ToglFunc = {}
                local Tgo = default
                local MainToggle = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local Text = Instance.new("TextLabel")
                local MainToggle_2 = Instance.new("ImageLabel")
                local UICorner_2 = Instance.new("UICorner")
                local MainToggle_3 = Instance.new("ImageLabel")
                local UICorner_3 = Instance.new("UICorner")
                local TextButton = Instance.new("TextButton")

                MainToggle.Name = "MainToggle"
                MainToggle.Parent = SectionContainer
                MainToggle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                MainToggle.BackgroundTransparency = 0.700
                MainToggle.BorderSizePixel = 0
                MainToggle.ClipsDescendants = true
                MainToggle.Size = UDim2.new(0.975000024, 0, 0, 35)
                MainToggle.ZIndex = 16

                UICorner.CornerRadius = UDim.new(0, 4)
                UICorner.Parent = MainToggle

                Text.Name = "Text"
                Text.Parent = MainToggle
                Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Text.BackgroundTransparency = 1.000
                Text.Position = UDim2.new(0, 10, 0, 10)
                Text.Size = UDim2.new(0, 100, 0, 12)
                Text.ZIndex = 16
                Text.Font = Enum.Font.GothamBold
                Text.Text = Name
                Text.TextColor3 = Color3.fromRGB(255, 255, 255)
                Text.TextSize = 12.000
                Text.TextTransparency = 0.4
                Text.TextXAlignment = Enum.TextXAlignment.Left

                MainToggle_2.Name = "MainToggle"
                MainToggle_2.Parent = MainToggle
                MainToggle_2.AnchorPoint = Vector2.new(0.5, 0.5)
                MainToggle_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                MainToggle_2.ClipsDescendants = true
                MainToggle_2.Position = UDim2.new(0.899999976, 0, 0.5, 0)
                MainToggle_2.Size = UDim2.new(0, 23, 0, 23)
                MainToggle_2.ZIndex = 16

                UICorner_2.CornerRadius = UDim.new(0, 3)
                UICorner_2.Parent = MainToggle_2

                MainToggle_3.Name = "MainToggle"
                MainToggle_3.Parent = MainToggle_2
                MainToggle_3.AnchorPoint = Vector2.new(0.5, 0.5)
                MainToggle_3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                MainToggle_3.ClipsDescendants = true
                MainToggle_3.Position = UDim2.new(0.5, 0, 0.5, 0)
                MainToggle_3.Size = UDim2.new(0, 0, 0, 0)
                MainToggle_3.ZIndex = 16
                MainToggle_3.Image = "http://www.roblox.com/asset/?id=6031068421"
                MainToggle_3.ImageColor3 = Color3.fromRGB(255, 182, 193)
                MainToggle_3.Visible = false
                UICorner_3.CornerRadius = UDim.new(0, 3)
                UICorner_3.Parent = MainToggle_3

                TextButton.Name = ""
                TextButton.Parent = MainToggle
                TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                TextButton.BackgroundTransparency = 1.000
                TextButton.BorderSizePixel = 0
                TextButton.Size = UDim2.new(1, 0, 1, 0)
                TextButton.ZIndex = 16
                TextButton.AutoButtonColor = false
                TextButton.Font = Enum.Font.Gotham
                TextButton.Text = ""
                TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton.TextSize = 14.000

                TextButton.MouseButton1Click:Connect(
                    function()
                        Tgo = not Tgo
                        ToglFunc:Update(Tgo)
                    end
                )

                if default then
                    if default then
                        MainToggle_3.Visible = default
                    end
                    TweenService:Create(
                        Text,
                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextTransparency = default and 0 or 0.4}
                    ):Play()
                    local we = TweenService:Create(
                        MainToggle_3,
                        TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                        {Size = default and UDim2.new(0, 25, 0, 25) or UDim2.new(0, 0, 0, 0)}
                    )
                    we:Play()
                    we.Completed:Wait()
                    if default == false then
                        MainToggle_3.Visible = default
                    end
                    callback(default)
                    Tgo = default
                end

                function ToglFunc:Update(state)
                    if state then
                        MainToggle_3.Visible = state
                    end
                    TweenService:Create(
                        Text,
                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextTransparency = state and 0 or 0.4}
                    ):Play()
                    local we = TweenService:Create(
                        MainToggle_3,
                        TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                        {Size = state and UDim2.new(0, 25, 0, 25) or UDim2.new(0, 0, 0, 0)}
                    )
                    we:Play()
                    we.Completed:Wait()
                    if state == false then
                        MainToggle_3.Visible = state
                    end
                    callback(state)
                    Tgo = state
                end
                return ToglFunc
            end

            function functionitem:Dropdown(Name, list, default, callback)
                local Dropfunc = {}
                local MainDropDown = Instance.new("Frame")
                local UICorner_7 = Instance.new("UICorner")
                local MainDropDown_2 = Instance.new("Frame")
                local UICorner_8 = Instance.new("UICorner")
                local v = Instance.new("TextButton")
                local NameLabel = Instance.new("TextLabel") -- Label for the dropdown name
                local SelectedFrame = Instance.new("Frame") -- Frame for the selected item
                local UICorner_Selected = Instance.new("UICorner")
                local SelectedLabel = Instance.new("TextLabel") -- Label for the selected item
                local ImageButton = Instance.new("ImageButton")
                local Scroll_Items = Instance.new("ScrollingFrame")
                local UIListLayout_3 = Instance.new("UIListLayout")
                local UIPadding_3 = Instance.new("UIPadding")
            
                MainDropDown.Name = "MainDropDown"
                MainDropDown.Parent = SectionContainer
                MainDropDown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                MainDropDown.BackgroundTransparency = 1 -- Make the main frame transparent
                MainDropDown.BorderSizePixel = 0
                MainDropDown.ClipsDescendants = true
                MainDropDown.Size = UDim2.new(0.975000024, 0, 0, 30)
                MainDropDown.ZIndex = 16
            
                UICorner_7.CornerRadius = UDim.new(0, 4)
                UICorner_7.Parent = MainDropDown
            
                MainDropDown_2.Name = "MainDropDown"
                MainDropDown_2.Parent = MainDropDown
                MainDropDown_2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                MainDropDown_2.BackgroundTransparency = 1 -- Make the inner frame transparent
                MainDropDown_2.BorderSizePixel = 0
                MainDropDown_2.ClipsDescendants = true
                MainDropDown_2.Size = UDim2.new(1, 0, 0, 30)
                MainDropDown_2.ZIndex = 16
            
                UICorner_8.CornerRadius = UDim.new(0, 4)
                UICorner_8.Parent = MainDropDown_2
            
                v.Name = "v"
                v.Parent = MainDropDown_2
                v.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                v.BackgroundTransparency = 1.000
                v.BorderSizePixel = 0
                v.Size = UDim2.new(1, 0, 1, 0)
                v.ZIndex = 16
                v.AutoButtonColor = false
                v.Font = Enum.Font.GothamBold
                v.Text = ""
                v.TextColor3 = Color3.fromRGB(255, 255, 255)
                v.TextSize = 12.000
            
                -- Name Label (e.g., "Dropdown")
                NameLabel.Name = "NameLabel"
                NameLabel.Parent = MainDropDown_2
                NameLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                NameLabel.BackgroundTransparency = 1.000
                NameLabel.Position = UDim2.new(0, 10, 0, 10)
                NameLabel.Size = UDim2.new(0, 100, 0, 12) -- Adjust size to fit the name
                NameLabel.ZIndex = 16
                NameLabel.Font = Enum.Font.GothamBold
                NameLabel.Text = Name -- Set to the dropdown name
                NameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                NameLabel.TextSize = 12.000
                NameLabel.TextXAlignment = Enum.TextXAlignment.Left
            
                -- Frame for the selected item (e.g., "four")
                SelectedFrame.Name = "SelectedFrame"
                SelectedFrame.Parent = MainDropDown_2
                SelectedFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60) -- Slightly lighter than the background
                SelectedFrame.BackgroundTransparency = 0.72
                SelectedFrame.Position = UDim2.new(1, -110, 0, 5) -- Shifted left (from -80 to -110)
                SelectedFrame.Size = UDim2.new(0, 80, 0, 20) -- Increased width from 50 to 80
                SelectedFrame.ZIndex = 16
            
                UICorner_Selected.CornerRadius = UDim.new(0, 4)
                UICorner_Selected.Parent = SelectedFrame
            
                -- Selected Item Label (e.g., "four")
                SelectedLabel.Name = "SelectedLabel"
                SelectedLabel.Parent = SelectedFrame
                SelectedLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SelectedLabel.BackgroundTransparency = 1.000
                SelectedLabel.Position = UDim2.new(0, 5, 0, 4)
                SelectedLabel.Size = UDim2.new(1, -10, 1, -8)
                SelectedLabel.ZIndex = 16
                SelectedLabel.Font = Enum.Font.GothamBold
                SelectedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                SelectedLabel.TextSize = 12.000
                SelectedLabel.TextXAlignment = Enum.TextXAlignment.Left
            
                -- Set the initial selected item
                function getpro()
                    if default then
                        if table.find(list, default) then
                            callback(default)
                            return default -- Return just the default value for the selected label
                        else
                            return "" -- Empty if no valid default
                        end
                    else
                        return "" -- Empty if no default
                    end
                end
            
                SelectedLabel.Text = getpro() -- Set the initial selected item text
            
                ImageButton.Parent = MainDropDown_2
                ImageButton.AnchorPoint = Vector2.new(0, 0.5)
                ImageButton.BackgroundTransparency = 1.000
                ImageButton.Position = UDim2.new(1, -25, 0.5, 0) -- Position the arrow on the far right
                ImageButton.Size = UDim2.new(0, 12, 0, 12)
                ImageButton.ZIndex = 16
                ImageButton.Image = "http://www.roblox.com/asset/?id=6282522798"
            
                Scroll_Items.Name = "Scroll_Items"
                Scroll_Items.Parent = MainDropDown
                Scroll_Items.Active = true
                Scroll_Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Scroll_Items.BackgroundTransparency = 1.000
                Scroll_Items.BorderSizePixel = 0
                Scroll_Items.Position = UDim2.new(0, 0, 0, 35)
                Scroll_Items.Size = UDim2.new(1, 0, 1, -35)
                Scroll_Items.ZIndex = 16
                Scroll_Items.CanvasSize = UDim2.new(0, 0, 0, 265)
                Scroll_Items.ScrollBarThickness = 0
            
                UIListLayout_3.Parent = Scroll_Items
                UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout_3.Padding = UDim.new(0, 5)
            
                UIPadding_3.Parent = Scroll_Items
                UIPadding_3.PaddingLeft = UDim.new(0, 10)
                UIPadding_3.PaddingTop = UDim.new(0, 5)
            
                UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                    function()
                        Scroll_Items.CanvasSize = UDim2.new(1, 0, 0, UIListLayout_2.AbsoluteContentSize.Y + 40)
                    end
                )
            
                function Dropfunc:TogglePanel(state)
                    TweenService:Create(
                        MainDropDown,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = state and UDim2.new(0.975000024, 0, 0, 200) or UDim2.new(0.975000024, 0, 0, 30)}
                    ):Play()
                    TweenService:Create(
                        ImageButton,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = state and 180 or 0}
                    ):Play()
                end
            
                local Tof = false
                ImageButton.MouseButton1Click:Connect(
                    function()
                        Tof = not Tof
                        Dropfunc:TogglePanel(Tof)
                    end
                )
            
                v.MouseButton1Click:Connect(
                    function()
                        Tof = not Tof
                        Dropfunc:TogglePanel(Tof)
                    end
                )
            
                function Dropfunc:Clear()
                    for i, v in next, Scroll_Items:GetChildren() do
                        if v:IsA("TextButton") then
                            v:Destroy()
                        end
                    end
                end
            
                function Dropfunc:Add(Text)
                    local _5 = Instance.new("TextButton")
                    local UICorner_9 = Instance.new("UICorner")
                    _5.Name = Text
                    _5.Parent = Scroll_Items
                    _5.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    _5.BorderSizePixel = 0
                    _5.ClipsDescendants = true
                    _5.Size = UDim2.new(1, -10, 0, 20)
                    _5.ZIndex = 17
                    _5.AutoButtonColor = false
                    _5.Font = Enum.Font.GothamBold
                    _5.Text = Text
                    _5.TextColor3 = Color3.fromRGB(255, 255, 255)
                    _5.TextSize = 12.000
            
                    UICorner_9.CornerRadius = UDim.new(0, 4)
                    UICorner_9.Parent = _5
            
                    _5.MouseButton1Click:Connect(
                        function()
                            Tof = false
                            Dropfunc:TogglePanel(Tof)
                            if callback then
                                callback(Text)
                            end
                            SelectedLabel.Text = Text -- Update only the selected item text
                        end
                    )
                end
            
                for i, v in next, list do
                    Dropfunc:Add(v)
                end
            
                return Dropfunc
            end

            function functionitem:Label(text)
                local textas = {}
                local Label = Instance.new("Frame")
                local Text = Instance.new("TextLabel")
                Label.Name = "Label"
                Label.Parent = SectionContainer
                Label.AnchorPoint = Vector2.new(0.5, 0.5)
                Label.BackgroundTransparency = 1.000
                Label.Size = UDim2.new(0.975000024, 0, 0, 30)

                Text.Name = "Text"
                Text.Parent = Label
                Text.AnchorPoint = Vector2.new(0.5, 0.5)
                Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Text.BackgroundTransparency = 1.000
                Text.Position = UDim2.new(0.5, 0, 0.5, 0)
                Text.Size = UDim2.new(0, 53, 0, 12)
                Text.ZIndex = 16
                Text.Font = Enum.Font.GothamBold
                Text.Text = text
                Text.TextColor3 = Color3.fromRGB(255,255,255)
                Text.TextSize = 12.000
            end

            function functionitem:LabelCheck(text,color)
                local textas = {}
                local Label = Instance.new("Frame")
                local Text = Instance.new("TextLabel")
                Label.Name = "Label"
                Label.Parent = SectionContainer
                Label.AnchorPoint = Vector2.new(0.5, 0.5)
                Label.BackgroundTransparency = 1.000
                Label.Size = UDim2.new(0.975000024, 0, 0, 30)

                Text.Name = "Text"
                Text.Parent = Label
                Text.AnchorPoint = Vector2.new(0.5, 0.5)
                Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Text.BackgroundTransparency = 1.000
                Text.Position = UDim2.new(0.5, 0, 0.5, 0)
                Text.Size = UDim2.new(0, 53, 0, 12)
                Text.ZIndex = 16
                Text.Font = Enum.Font.GothamBold
                Text.Text = text
                Text.TextColor3 = Color3.fromRGB(color)
                Text.TextSize = 12.000
                function textas:Change(newtext,newColor)
                    Text.TextColor3 = Color3.fromRGB(newColor)
                    Text.Text = newtext
                    if newColor == nil or newColor == "" then
                        Text.TextColor3 = Color3.fromRGB(0,255,0)
                    end
                end
                return textas
            end

            function functionitem:Button(Name, callback)
                local Button = Instance.new("Frame")
                local UICorner_6 = Instance.new("UICorner")
                local TextLabel_3 = Instance.new("TextLabel")
                local TextButton = Instance.new("TextButton")
            
                Button.Name = "Button"
                Button.Parent = SectionContainer
                Button.BackgroundColor3 = Color3.fromRGB(255, 182, 193)
                Button.Size = UDim2.new(0.975000024, 0, 0, 20)
                Button.ZIndex = 16
            
                UICorner_6.CornerRadius = UDim.new(0, 4)
                UICorner_6.Parent = Button
            
                TextLabel_3.Parent = Button
                TextLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
                TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_3.BackgroundTransparency = 1.000
                TextLabel_3.Position = UDim2.new(0.5, 0, 0.5, 0)
                TextLabel_3.Size = UDim2.new(0, 40, 0, 12)
                TextLabel_3.ZIndex = 16
                TextLabel_3.Font = Enum.Font.GothamBold
                TextLabel_3.Text = Name
                TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_3.TextSize = 12.000
            
                TextButton.Parent = Button
                TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                TextButton.BackgroundTransparency = 1.000
                TextButton.BorderSizePixel = 0
                TextButton.ClipsDescendants = true
                TextButton.Size = UDim2.new(1, 0, 1, 0)
                TextButton.ZIndex = 16
                TextButton.AutoButtonColor = false
                TextButton.Font = Enum.Font.Gotham
                TextButton.Text = ""
                TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton.TextSize = 14.000
            
                TextButton.MouseButton1Click:Connect(function()
                    local UserInputService = game:GetService("UserInputService")
                    local mousePos = UserInputService:GetMouseLocation()
                    local guiInset = game:GetService("GuiService"):GetGuiInset()
                    mousePos = mousePos - guiInset

                    local absolutePos = Button.AbsolutePosition
                    local absoluteSize = Button.AbsoluteSize
                    local relativeX = (mousePos.X - absolutePos.X) / absoluteSize.X
                    local relativeY = (mousePos.Y - absolutePos.Y) / absoluteSize.Y
            
                    local Explosion = Instance.new("Frame")
                    local ExplosionUICorner = Instance.new("UICorner")
                    
                    Explosion.Name = "ExplosionEffect"
                    Explosion.Parent = Button
                    Explosion.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Explosion.Position = UDim2.new(relativeX, 0, relativeY, 0)
                    Explosion.Size = UDim2.new(0, 10, 0, 10)
                    Explosion.AnchorPoint = Vector2.new(0.5, 0.5)
                    Explosion.ZIndex = 17
                    Explosion.BackgroundTransparency = 0
            
                    ExplosionUICorner.CornerRadius = UDim.new(1, 0)
                    ExplosionUICorner.Parent = Explosion

                    local TweenService = game:GetService("TweenService")
                    local tweenInfo = TweenInfo.new(
                        0.3,
                        Enum.EasingStyle.Quad,
                        Enum.EasingDirection.Out
                    )
                    
                    local tween = TweenService:Create(
                        Explosion,
                        tweenInfo,
                        {
                            Size = UDim2.new(0, 50, 0, 50),
                            BackgroundTransparency = 1
                        }
                    )
                    
                    tween:Play()

                    tween.Completed:Connect(function()
                        Explosion:Destroy()
                    end)

                    callback()
                end)
            end

            return functionitem
        end
        return sections
    end
    return tabs
end
return library
