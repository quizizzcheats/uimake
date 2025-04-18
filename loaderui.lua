pcall(function()
    repeat wait()
        game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
    until not game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death")
    end)
    
    local blur = Instance.new("BlurEffect", game.Lighting)
    blur.Size = 0
    
    local ScreenGui = Instance.new("ScreenGui")
    local ImageLabel = Instance.new("ImageLabel")
    ScreenGui.Parent = game.CoreGui
    ImageLabel.Parent = ScreenGui
    ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    ImageLabel.BackgroundTransparency = 1
    ImageLabel.Position = UDim2.new(0.5, -(303 / 2), 0.5, -(263 / 2))
    ImageLabel.Rotation = 0
    ImageLabel.Size = UDim2.new(0, 303, 0, 263)
    ImageLabel.Image = "rbxassetid://134313312158326"
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
    
    task.wait()
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
    function CircleClick(Button, X, Y)
        coroutine.resume(
            coroutine.create(
                function()
                    local Circle = Instance.new("ImageLabel")
                    Circle.Parent = Button
                    Circle.Name = "Circle"
                    Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Circle.BackgroundTransparency = 1.000
                    Circle.ZIndex = 10
                    Circle.Image = "rbxassetid://266543268"
                    Circle.ImageColor3 = Color3.fromRGB(255, 255, 255)
                    Circle.ImageTransparency = 0.7
                    local NewX = X - Circle.AbsolutePosition.X
                    local NewY = Y - Circle.AbsolutePosition.Y
                    Circle.Position = UDim2.new(0, NewX, 0, NewY)
    
                    local Time = 0.1
                    Circle:TweenSizeAndPosition(
                        UDim2.new(0, 30.25, 0, 30.25),
                        UDim2.new(0, NewX - 15, 0, NewY - 10),
                        "Out",
                        "Quad",
                        Time,
                        false,
                        nil
                    )
                    for i = 1,10 do
                        Circle.ImageTransparency = Circle.ImageTransparency + 0.01
                        task.wait(.1)
                    end
                    Circle:Destroy()
                end
            )
        )
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
        local Top = Instance.new("Frame")
        local TabHolder = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local TabContainer = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")
        local UIPadding = Instance.new("UIPadding")
        local Logo = Instance.new("ImageLabel")
        local Title = Instance.new("TextLabel")
        local Desc = Instance.new("TextLabel")
        
        Main.Name = "Main"
        Main.Parent = UI
        Main.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
        Main.Position = UDim2.new(0.5, 0, 0.5, 0)
        Main.Size = UDim2.new(0, 520, 0, 650)
        Main.ClipsDescendants = true
        Main.AnchorPoint = Vector2.new(0.5, 0.5)
    
        Logo.Name = "Logo"
        Logo.Parent = Main
        Logo.Active = true
        Logo.AnchorPoint = Vector2.new(0.5, 0.5)
        Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Logo.BackgroundTransparency = 1.000
        Logo.Position = UDim2.new(0, 35, 0, 35)
        Logo.Size = UDim2.new(0, 50, 0, 50)
        Logo.Image = "http://www.roblox.com/asset/?id=11549641020"
    
        Title.Name = "Title"
        Title.Parent = Main
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.Position = UDim2.new(0.0882352963, 20, 0, 10)
        Title.Size = UDim2.new(0, 483, 0, 31)
        Title.Font = Enum.Font.GothamMedium
        Title.Text = "AZURA STORE CUSTOM SCRIPT"
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextSize = 14.000
        Title.TextWrapped = true
        Title.TextXAlignment = Enum.TextXAlignment.Left
    
        Desc.Name = "Desc"
        Desc.Parent = Main
        Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Desc.BackgroundTransparency = 1.000
        Desc.Position = UDim2.new(0.0882352963, 20, 0, 25)
        Desc.Size = UDim2.new(0, 483, 0, 31)
        Desc.Font = Enum.Font.GothamMedium
        Desc.Text = "HUB"
        Desc.TextColor3 = Color3.fromRGB(255, 255, 255)
        Desc.TextSize = 14.000
        Desc.TextWrapped = true
        Desc.TextTransparency = .5
        Desc.TextXAlignment = Enum.TextXAlignment.Left
        
        local UiToggle_UiStroke1 = Instance.new("UIStroke")
    
        UiToggle_UiStroke1.Color = Color3.fromRGB(25,25,25)
        UiToggle_UiStroke1.Thickness = 2
        UiToggle_UiStroke1.Name = "UiToggle_UiStroke1"
        UiToggle_UiStroke1.Parent = Main
                
        UICorner.CornerRadius = UDim.new(0, 6)
        UICorner.Parent = Main
            
        Top.Name = "Top"
        Top.Parent = Main
        Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Top.BackgroundTransparency = 1.000
        Top.Position = UDim2.new(0.021956088, 0, 0.0133333337, 65)
        Top.Size = UDim2.new(0, 490, 0, 39)
    
        TabHolder.Name = "TabHolder"
        TabHolder.Parent = Top
        TabHolder.BackgroundColor3 = Color3.fromRGB(25,25,25)
        TabHolder.Position = UDim2.new(-0.010309278, 6, -0.0123075824, 0)
        TabHolder.Size = UDim2.new(0, 495, 0, 38)
    
        UICorner_2.Parent = TabHolder
    
        TabContainer.Name = "TabContainer"
        TabContainer.Parent = TabHolder
        TabContainer.Active = true
        TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabContainer.BackgroundTransparency = 1.000
        TabContainer.Size = UDim2.new(0, 495, 0, 38)
        TabContainer.CanvasSize = UDim2.new(2, 0, 0, 0)
        TabContainer.ScrollBarThickness = 0
        TabContainer.VerticalScrollBarInset = Enum.ScrollBarInset.Always
    
        UIListLayout.Parent = TabContainer
        UIListLayout.FillDirection = Enum.FillDirection.Horizontal
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 30)
        UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
            function()
                TabContainer.CanvasSize = UDim2.new(0, UIListLayout.AbsoluteContentSize.X, 0, 0)
            end
        )
        UIPadding.Parent = TabContainer
        UIPadding.PaddingLeft = UDim.new(0, 3)
        UIPadding.PaddingTop = UDim.new(0, 3)
        local Bottom = Instance.new("Frame")
        Bottom.Name = "Bottom"
        Bottom.Parent = Main
        Bottom.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        Bottom.BackgroundTransparency = 1.000
        Bottom.Position = UDim2.new(0.0119760484, 7, 0.0916666687, 60)
        Bottom.Size = UDim2.new(0, 500, 0, 525)
        
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
            local UICorner_Tab = Instance.new("UICorner")
            local ImageLabel = Instance.new("ImageLabel")
            local TextLabel = Instance.new("TextLabel")
            
            FrameTab.Name = "FrameTab"
            FrameTab.Parent = Tab
            FrameTab.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
            FrameTab.Size = UDim2.new(0, 140, 0, 30)
            UICorner_Tab.CornerRadius = UDim.new(0, 3)
            UICorner_Tab.Parent = FrameTab
            
            Tab.Name = "Tab"
            Tab.Parent = TabContainer
            Tab.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
            Tab.Size = UDim2.new(0, 114, 0, 30)
            Tab.BackgroundTransparency = 1
            Tab.Text = ""
            UICorner_3.CornerRadius = UDim.new(0, 3)
            UICorner_3.Parent = Tab
    
            ImageLabel.Parent = Tab
            ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel.Position = UDim2.new(0, 5, 0.2, 0)
            ImageLabel.Size = UDim2.new(0, 20, 0, 20)
            ImageLabel.Image = "http://www.roblox.com/asset/?id=" .. icon
            ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel.ImageTransparency = 0.2
            ImageLabel.BackgroundTransparency = 1
    
            TextLabel.Parent = Tab
            TextLabel.Text = Name.." "
    
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.Position = UDim2.new(0.342105269, 0, 0.100000001, 0)
            TextLabel.Size = UDim2.new(0, 87, 0, 27)
            TextLabel.Font = Enum.Font.GothamBold
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 12.300
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            TextLabel.TextTransparency = 0.200
    
            if TextLabel.Name == Name.." " then
                Tab.Size = UDim2.new(0, 70 + TextLabel.TextBounds.X, 0, 25)
            end
            
            local Page = Instance.new("ScrollingFrame")
            local Left = Instance.new("ScrollingFrame")
            local Right = Instance.new("ScrollingFrame")
            local UIListLayout_5 = Instance.new("UIListLayout")
            local UIPadding_5 = Instance.new("UIPadding")
    
            Page.Name = "Page"
            Page.Parent = Bottom
            Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Page.BackgroundTransparency = 1.000
            Page.Size = UDim2.new(0, 500, 0, 525)
            Page.ScrollBarThickness = 0
            Page.CanvasSize = UDim2.new(0, 0, 0, 0)
            Page.Visible = false
    
            Left.Name = "Left"
            Left.Parent = Page
            Left.Active = true
            Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Left.BackgroundTransparency = 1.000
            Left.Size = UDim2.new(0, 240, 0, 525)
            Left.ScrollBarThickness = 0
            Left.CanvasSize = UDim2.new(0, 0, 0, 0)
    
            Right.Name = "Right"
            Right.Parent = Page
            Right.Active = true
            Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Right.BackgroundTransparency = 1.000
            Right.Size = UDim2.new(0, 240, 0, 525)
            Right.ScrollBarThickness = 0
            Right.CanvasSize = UDim2.new(0, 0, 0, 0)
    
            local LeftList = Instance.new("UIListLayout")
            local RightList = Instance.new("UIListLayout")
    
            LeftList.Parent = Left
            LeftList.SortOrder = Enum.SortOrder.LayoutOrder
            LeftList.Padding = UDim.new(0, 8)
    
            RightList.Parent = Right
            RightList.SortOrder = Enum.SortOrder.LayoutOrder
            RightList.Padding = UDim.new(1, 1)
    
            UIListLayout_5.Parent = Page
            UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
            UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_5.Padding = UDim.new(0, 13)
    
            UIPadding_5.Parent = Page
    
            LeftList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                function()
                    Left.CanvasSize = UDim2.new(0, 240, 0, LeftList.AbsoluteContentSize.Y)
                end
            )
            RightList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                function()
                    Right.CanvasSize = UDim2.new(0, 240, 0, RightList.AbsoluteContentSize.Y )
                end
            )
            if S == false then
                S = true
                Page.Visible = true
                TextLabel.TextColor3 = Color3.fromRGB(255, 182, 193)
                TextLabel.TextTransparency = 0
                ImageLabel.ImageColor3 = Color3.fromRGB(255, 182, 193)
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
                                x.ImageLabel,
                                TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {ImageColor3 = Color3.fromRGB(255, 255, 255)}
                            ):Play()
                            TweenService:Create(
                                x.ImageLabel,
                                TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {ImageTransparency = 0.2}
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
                        ImageLabel,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {ImageColor3 = Color3.fromRGB(255, 182, 193)}
                    ):Play()
                    TweenService:Create(
                        ImageLabel,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {ImageTransparency = 0}
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
            function sections:Section(Name,side)
                    local Side2 = nil
                if side then
                    Side2= side:lower() or "left"
                else
                    Side2=GetSide(false)
                end
    
                local Section = Instance.new("Frame")
                local UICorner_5 = Instance.new("UICorner")
                local Top_2 = Instance.new("Frame")
                local Line = Instance.new("Frame")
                local Sectionname = Instance.new("TextLabel")
                local SectionContainer = Instance.new("Frame")
                local SectionContainer_2 = Instance.new("Frame")
                local UIListLayout_2 = Instance.new("UIListLayout")
                local UIPadding_2 = Instance.new("UIPadding")
    
                Section.Name = "Section"
                Section.Parent = Side2 == "left" and Left or Right or GetSide(false)
                Section.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                Section.ClipsDescendants = true
                Section.Size = UDim2.new(0, 240, 0, 343)
    
                UICorner_5.CornerRadius = UDim.new(0, 5)
                UICorner_5.Parent = Section
    
                Top_2.Name = "Top"
                Top_2.Parent = Section
                Top_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Top_2.BackgroundTransparency = 1.000
                Top_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
                Top_2.Size = UDim2.new(0, 238, 0, 31)
    
                Line.Name = "Line"
                Line.Parent = Top_2
                Line.BackgroundColor3 = Color3.fromRGB(255, 182, 193)
                Line.BorderSizePixel = 0
                Line.Size = UDim2.new(0, 239, 0, 1)
    
                Sectionname.Name = "Sectionname"
                Sectionname.Parent = Top_2
                Sectionname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Sectionname.BackgroundTransparency = 1.000
                Sectionname.Position = UDim2.new(0.0591227226, 0, 0.0222222228, 0)
                Sectionname.Size = UDim2.new(0, 224, 0, 24)
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
                SectionContainer.Size = UDim2.new(0, 239, 0, 318)
    
                SectionContainer_2.Name = "SectionContainer_2"
                SectionContainer_2.Parent = Top_2
                SectionContainer_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SectionContainer_2.BackgroundTransparency = 1.000
                SectionContainer_2.BorderSizePixel = 0
                SectionContainer_2.Position = UDim2.new(0, 0, 0.796416223, 0)
                SectionContainer_2.Size = UDim2.new(0, 239, 0, 318)
                
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
                    Text.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Text.TextSize = 12.000
                    function textas:Change(newtext)
                        Text.Text = newtext
                    end
                    return textas
                end
    
                function functionitem:LabelColor(text,color)
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
                
                function functionitem:ButtonTog(Title, default, callback)
                    local b3Func = {}
                    local callback = callback or function()
                    end
                    local Tgs = default
                    local Button_2 = Instance.new("Frame")
                    local UICorner_21 = Instance.new("UICorner")
                    local TextLabel_4 = Instance.new("TextLabel")
                    local TextButton_4 = Instance.new("TextButton")
    
                    Button_2.Name = "Button"
                    Button_2.Parent = SectionContainer
                    Button_2.BackgroundColor3 = Color3.fromRGB(33, 132, 112)
                    Button_2.Size = UDim2.new(0.975000024, 0, 0, 25)
                    Button_2.ZIndex = 16
    
                    if default then
                        Button_2.BackgroundColor3 = Color3.fromRGB(33, 132, 112)
                    else
                        Button_2.BackgroundColor3 = Color3.fromRGB(255, 182, 193)
                    end
    
                    UICorner_21.CornerRadius = UDim.new(0, 4)
                    UICorner_21.Parent = Button_2
    
                    TextLabel_4.Parent = Button_2
                    TextLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
                    TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel_4.BackgroundTransparency = 1.000
                    TextLabel_4.Position = UDim2.new(0.5, 0, 0.5, 0)
                    TextLabel_4.Size = UDim2.new(0, 40, 0, 12)
                    TextLabel_4.ZIndex = 16
                    TextLabel_4.Font = Enum.Font.GothamBold
                    TextLabel_4.Text = tostring(Title)
                    TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel_4.TextSize = 12.000
    
                    TextButton_4.Parent = Button_2
                    TextButton_4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    TextButton_4.BackgroundTransparency = 1.000
                    TextButton_4.BorderSizePixel = 0
                    TextButton_4.ClipsDescendants = true
                    TextButton_4.Size = UDim2.new(1, 0, 1, 0)
                    TextButton_4.ZIndex = 16
                    TextButton_4.AutoButtonColor = false
                    TextButton_4.Font = Enum.Font.Gotham
                    TextButton_4.Text = ""
                    TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                    TextButton_4.TextSize = 14.000
    
                    TextButton_4.MouseButton1Click:Connect(
                        function()
                            Tgs = not Tgs
                            b3Func:Update(Tgs)
                            CircleClick(Button_2, Mouse.X, Mouse.Y)
                        end
                    )
    
                    if default then
                        TweenService:Create(
                            Button_2,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {
                                BackgroundColor3 = state and Color3.fromRGB(255, 182, 193) or Color3.fromRGB(33, 132, 112)
                            }
                        ):Play()
                        callback(default)
                        Tgs = default
                    end
                    function b3Func:Update(state)
                        TweenService:Create(
                            Button_2,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {
                                BackgroundColor3 = state and Color3.fromRGB(33, 132, 112) or Color3.fromRGB(255, 182, 193)
                            }
                        ):Play()
                        callback(state)
                        Tgs = state
                    end
    
                    return b3Func
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
    
                    TextButton.MouseButton1Click:Connect(
                        function()
                            CircleClick(Button, Mouse.X, Mouse.Y)
                            callback()
                        end
                    )
                end
                
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
                    MainToggle_3.Visible =false
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
                            CircleClick(Button, Mouse.X, Mouse.Y)
                        end
                    )
    
                    if default then
                        if default then
                            MainToggle_3.Visible = default
                            end
                        TweenService:Create(
                            Text,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {
                                TextTransparency = default and 0 or 0.4
                            }
                        ):Play()
                        local we = TweenService:Create(
                            MainToggle_3,
                            TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                            {
                                Size = default and UDim2.new(0, 25, 0, 25) or UDim2.new(0, 0, 0, 0) 
                            }
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
                            {
                                TextTransparency = state and 0 or 0.4
                            }
                        ):Play()
                        local we = TweenService:Create(
                            MainToggle_3,
                            TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                            {
                                Size = state and UDim2.new(0, 25, 0, 25) or UDim2.new(0, 0, 0, 0) 
                            }
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
    
                function functionitem:Textbox(Name, dissapear, Placeholder, callback)
                    local Textbox = Instance.new("Frame")
                    local UICorner_16 = Instance.new("UICorner")
                    local Text_5 = Instance.new("TextLabel")
                    local TextboxHoler = Instance.new("Frame")
                    local UICorner_17 = Instance.new("UICorner")
                    local HeadTitle = Instance.new("TextBox")
                    Textbox.Name = "Textbox"
                    Textbox.Parent = SectionContainer
                    Textbox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                    Textbox.BackgroundTransparency = 0.700
                    Textbox.BorderSizePixel = 0
                    Textbox.ClipsDescendants = true
                    Textbox.Size = UDim2.new(0.975000024, 0, 0, 60)
                    Textbox.ZIndex = 16
    
                    UICorner_16.CornerRadius = UDim.new(0, 4)
                    UICorner_16.Parent = Textbox
    
                    Text_5.Name = "Text"
                    Text_5.Parent = Textbox
                    Text_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Text_5.BackgroundTransparency = 1.000
                    Text_5.Position = UDim2.new(0, 10, 0, 10)
                    Text_5.Size = UDim2.new(0, 43, 0, 12)
                    Text_5.ZIndex = 16
                    Text_5.Font = Enum.Font.GothamBold
                    Text_5.Text = Name
                    Text_5.TextColor3 = Color3.fromRGB(255, 182, 193)
                    Text_5.TextSize = 11.000
                    Text_5.TextXAlignment = Enum.TextXAlignment.Left
    
                    TextboxHoler.Name = "TextboxHoler"
                    TextboxHoler.Parent = Textbox
                    TextboxHoler.AnchorPoint = Vector2.new(0.5, 0.5)
                    TextboxHoler.BackgroundColor3 = Color3.fromRGB(13, 13, 15)
                    TextboxHoler.BackgroundTransparency = 1.000
                    TextboxHoler.BorderSizePixel = 0
                    TextboxHoler.Position = UDim2.new(0.5, 0, 0.5, 13)
                    TextboxHoler.Size = UDim2.new(0.970000029, 0, 0, 30)
    
                    UICorner_17.CornerRadius = UDim.new(0, 6)
                    UICorner_17.Parent = TextboxHoler
    
                    HeadTitle.Name = "HeadTitle"
                    HeadTitle.Parent = TextboxHoler
                    HeadTitle.AnchorPoint = Vector2.new(0.5, 0.5)
                    HeadTitle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                    HeadTitle.BackgroundTransparency = 1.000
                    HeadTitle.BorderSizePixel = 0
                    HeadTitle.ClipsDescendants = true
                    HeadTitle.Position = UDim2.new(0.5, 0, 0.5, 0)
                    HeadTitle.Size = UDim2.new(0.949999988, 0, 0, 40)
                    HeadTitle.ZIndex = 16
                    HeadTitle.Font = Enum.Font.GothamBold
                    HeadTitle.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
                    HeadTitle.PlaceholderText = Placeholder
                    HeadTitle.Text = ""
                    HeadTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
                    HeadTitle.TextSize = 13.000
                    HeadTitle.TextTransparency = 0.700
                    HeadTitle.TextXAlignment = Enum.TextXAlignment.Left
                    HeadTitle.FocusLost:Connect(
                        function(ep)
                            if ep then
                                if #HeadTitle.Text > 0 then
                                    callback(HeadTitle.Text)
                                    if dissapear then
                                        HeadTitle.Text = ""
                                    end
                                end
                            end
                        end
                    )
                end
    
                function functionitem:Dropdown(Name, list, default, callback)
                    local Dropfunc = {}
    
                    local MainDropDown = Instance.new("Frame")
                    local UICorner_7 = Instance.new("UICorner")
                    local MainDropDown_2 = Instance.new("Frame")
                    local UICorner_8 = Instance.new("UICorner")
                    local v = Instance.new("TextButton")
                    local Text_2 = Instance.new("TextLabel")
                    local ImageButton = Instance.new("ImageButton")
                    local Scroll_Items = Instance.new("ScrollingFrame")
                    local UIListLayout_3 = Instance.new("UIListLayout")
                    local UIPadding_3 = Instance.new("UIPadding")
    
                    MainDropDown.Name = "MainDropDown"
                    MainDropDown.Parent = SectionContainer
                    MainDropDown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                    MainDropDown.BackgroundTransparency = 0.700
                    MainDropDown.BorderSizePixel = 0
                    MainDropDown.ClipsDescendants = true
                    MainDropDown.Size = UDim2.new(0.975000024, 0, 0, 30)
                    MainDropDown.ZIndex = 16
    
                    UICorner_7.CornerRadius = UDim.new(0, 4)
                    UICorner_7.Parent = MainDropDown
    
                    MainDropDown_2.Name = "MainDropDown"
                    MainDropDown_2.Parent = MainDropDown
                    MainDropDown_2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                    MainDropDown_2.BackgroundTransparency = 0.700
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
                    function getpro()
                        if default then
                            if table.find(list, default) then
                                callback(default)
                                return Name .. " : " .. default
                            else
                                return Name .. " : "
                            end
                        else
                            return Name .. " : "
                        end
                    end
                    Text_2.Name = "Text"
                    Text_2.Parent = MainDropDown_2
                    Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Text_2.BackgroundTransparency = 1.000
                    Text_2.Position = UDim2.new(0, 10, 0, 10)
                    Text_2.Size = UDim2.new(0, 62, 0, 12)
                    Text_2.ZIndex = 16
                    Text_2.Font = Enum.Font.GothamBold
                    Text_2.Text = getpro()
                    Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Text_2.TextSize = 12.000
                    Text_2.TextXAlignment = Enum.TextXAlignment.Left
    
                    ImageButton.Parent = MainDropDown_2
                    ImageButton.AnchorPoint = Vector2.new(0, 0.5)
                    ImageButton.BackgroundTransparency = 1.000
                    ImageButton.Position = UDim2.new(1, -25, 0.5, 0)
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
                    UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                        function()
                            Scroll_Items.CanvasSize = UDim2.new(1, 0, 0, UIListLayout_2.AbsoluteContentSize.Y+40)
                        end
                    )
                    UIPadding_3.Parent = Scroll_Items
                    UIPadding_3.PaddingLeft = UDim.new(0, 10)
                    UIPadding_3.PaddingTop = UDim.new(0, 5)
    
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
                                Text_2.Text = Text
                            end
                        )
                    end
                    
                    for i, v in next, list do
                        Dropfunc:Add(v)
                    end
                    
                    return Dropfunc
                end
                function functionitem:Slider(Name, min, max, default, callback)
                    local sliderfunc = {}
                    local min = min or 1
                    local max = max or 11
                    local default = default or max / 2
                    local callback = callback or function()
                        end
                    local offset = 70
                    if default > max then
                        default = max
                    elseif default < min then
                        default = min
                    end
    
                    local MainSlider = Instance.new("Frame")
                    local UICorner_12 = Instance.new("UICorner")
                    local Text_4 = Instance.new("TextLabel")
                    local SliderBar = Instance.new("TextButton")
                    local UICorner_13 = Instance.new("UICorner")
                    local SliderBar_2 = Instance.new("TextButton")
                    local UICorner_14 = Instance.new("UICorner")
                    local TextButton_2 = Instance.new("TextButton")
    
                    MainSlider.Name = "MainSlider"
                    MainSlider.Parent = SectionContainer
                    MainSlider.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                    MainSlider.BackgroundTransparency = 0.700
                    MainSlider.BorderSizePixel = 0
                    MainSlider.ClipsDescendants = true
                    MainSlider.Size = UDim2.new(0.975000024, 0, 0, 50)
                    MainSlider.ZIndex = 16
    
                    UICorner_12.CornerRadius = UDim.new(0, 4)
                    UICorner_12.Parent = MainSlider
    
                    Text_4.Name = "Text"
                    Text_4.Parent = MainSlider
                    Text_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Text_4.BackgroundTransparency = 1.000
                    Text_4.Position = UDim2.new(0, 10, 0, 10)
                    Text_4.Size = UDim2.new(0, 63, 0, 12)
                    Text_4.ZIndex = 16
                    Text_4.Font = Enum.Font.GothamBold
                    Text_4.Text = Name .. " : " .. default
                    Text_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Text_4.TextSize = 12.000
                    Text_4.TextXAlignment = Enum.TextXAlignment.Left
    
                    TextButton_2.Parent = SliderBar
                    TextButton_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    TextButton_2.BackgroundTransparency = 1.000
                    TextButton_2.BorderSizePixel = 0
                    TextButton_2.ClipsDescendants = true
                    TextButton_2.Position = UDim2.new(0, 0, 0, -8)
                    TextButton_2.Size = UDim2.new(1, 5, 1, 18)
                    TextButton_2.ZIndex = 16
                    TextButton_2.AutoButtonColor = false
                    TextButton_2.Font = Enum.Font.Gotham
                    TextButton_2.Text = ""
                    TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                    TextButton_2.TextSize = 14.000
    
                    local SliderValueFrame = Instance.new("Frame")
                    SliderValueFrame.Name = "SliderValueFrame"
                    SliderValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                    SliderValueFrame.Size = UDim2.new(0, 197, 0, 4)
                    SliderValueFrame.Position = UDim2.new(0.4857185, 0, 0.7700002, 0)
                    SliderValueFrame.BorderSizePixel = 0
                    SliderValueFrame.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
                    SliderValueFrame.Parent = MainSlider
                    local dragging = false
    
                    local SliderValueFrame1 = Instance.new("Frame")
                    SliderValueFrame1.Name = "SliderValueFrame"
                    SliderValueFrame1.Size = UDim2.new(0.5, 0, 0, 4)
                    SliderValueFrame1.BorderSizePixel = 0
                    SliderValueFrame1.BackgroundColor3 = Color3.fromRGB(255, 182, 193)
                    SliderValueFrame1.Parent = SliderValueFrame
    
                    local SliderValueFrame2 = Instance.new("TextButton")
                    SliderValueFrame2.Name = "SliderValueFrame"
                    SliderValueFrame2.Size = UDim2.new(0, 15, 0, 15)
    
                    SliderValueFrame2.Position = UDim2.new(0.5, 0, 0, 0)
                    SliderValueFrame2.BorderSizePixel = 0
                    SliderValueFrame2.BackgroundColor3 = Color3.fromRGB(255, 182, 193)
                    SliderValueFrame2.Parent = SliderValueFrame
                    SliderValueFrame2.Text = ""
                    UICorner_1s2 = Instance.new("UICorner")
                    UICorner_1s2.CornerRadius = UDim.new(0, 90)
                    UICorner_1s2.Parent = SliderValueFrame2
                    
                    
                    local Value = start
                    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
                    local function move(input)
                        local pos =
                            UDim2.new(
                            math.clamp(
                                (input.Position.X - SliderValueFrame.AbsolutePosition.X) / SliderValueFrame.AbsoluteSize.X,
                                0,
                                1
                            ),
                            0,
                            0,
                            -6
                        )
                        local pos1 =
                            UDim2.new(
                            math.clamp(
                                (input.Position.X - SliderValueFrame.AbsolutePosition.X) / SliderValueFrame.AbsoluteSize.X,
                                0,
                                1
                            ),
                            0,
                            0,
                            4
                        )
                        SliderValueFrame1.Size = pos1
                        SliderValueFrame2.Position = pos
    
                        local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                        Value = value
                        repeat 
                            task.wait()
                            if min <= 11 or max <= 11 or default >= 11 then
                                Text_4.Text = Name .. " : " .. Value
                            elseif max >= 11 or min >= 11 or default >= 11 then
                                Text_4.Text = Name .. " : " .. Value
                            end
                        until 
                        callback(Value)
                    end
                    SliderValueFrame2.InputBegan:Connect(
                        function(input)
                            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                dragging = true
                            end
                        end
                    )
                    SliderValueFrame2.InputEnded:Connect(
                        function(input)
                            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                dragging = false
                            end
                        end
                    )
                    game:GetService("UserInputService").InputChanged:Connect(
                        function(input)
                            if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                                move(input)
                            end
                        end
                    )
    
                    if default then
                        local pos = UDim2.new(math.clamp((default) / max, 0, 1), -6, -1.5, 0)
                        SliderValueFrame2.Position = pos
                        SliderValueFrame1.Size = UDim2.new((default or 0) / max, 0, 0, 4)
                            if max >= 11 then
                                Text_4.Text = Name .. " : " .. default
                            else
                                Text_4.Text = Name .. " : " .. Value
                            end
                        callback(default)
                    end
                    function sliderfunc:Update(value)
                        local pos = UDim2.new(math.clamp((default) / max, 0, 1), -6, -1.5, 0)
                        SliderValueFrame2.Position = pos
                        SliderValueFrame1.Size = UDim2.new((default or 0) / max, 0, 0, 4)
                            if max >= 11 then
                                Text_4.Text = Name .. " : " .. default
                            else
                                Text_4.Text = Name .. " : " .. Value
                            end
                        callback(value)
                    end
                    return sliderfunc
                end
                return functionitem
            end
            return sections
        end
        return tabs
    end
    
    local Notification = {}
    Notification.__index = Notification
    
    local ts = game:GetService("TweenService")
    local ss = game:GetService("SoundService")
    local txtS = game:GetService("TextService")
    
    local openSound = Instance.new("Sound")
    local closeSound = Instance.new("Sound")
    
    local notifications = Instance.new("ScreenGui")
    local notifsHolderFrame = Instance.new("Frame")
    local notifHolderListLayout = Instance.new("UIListLayout")
    local errorTemplate = Instance.new("Frame")
    local errorTemplateFrame = Instance.new("Frame")
    local errorTemplateCorner = Instance.new("UICorner")
    local errorSeverityFrame = Instance.new("Frame")
    local errorSeverityCorner = Instance.new("UICorner")
    local hideErrorSeverityCornerFrame = Instance.new("Frame")
    local errorImage = Instance.new("ImageLabel")
    local errorInformationFrame = Instance.new("Frame")
    local errorHeadingText = Instance.new("TextLabel")
    local errorBodyText = Instance.new("TextLabel")
    local errorCornerHidingFrame = Instance.new("Frame")
    local errorCloseButton = Instance.new("ImageButton")
    local infoTemplate = Instance.new("Frame")
    local infoTemplateFrame = Instance.new("Frame")
    local infoSeverityFrame = Instance.new("Frame")
    local infoSeverityCorner = Instance.new("UICorner")
    local hideInfoSeverityCornerFrame = Instance.new("Frame")
    local infoImage = Instance.new("ImageLabel")
    local infoInformationFrame = Instance.new("Frame")
    local infoHeadingText = Instance.new("TextLabel")
    local infoBodyText = Instance.new("TextLabel")
    local infoCornerHidingFrame = Instance.new("Frame")
    local infoCloseButton = Instance.new("ImageButton")
    local infoTemplateCorner = Instance.new("UICorner")
    local messageTemplate = Instance.new("Frame")
    local messageTemplateFrame = Instance.new("Frame")
    local messageTemplateCorner = Instance.new("UICorner")
    local messageSeverityFrame = Instance.new("Frame")
    local messageSeverityCorner = Instance.new("UICorner")
    local hideMessageSeverityCornerFrame = Instance.new("Frame")
    local messageInformationFrame = Instance.new("Frame")
    local messageHeadingText = Instance.new("TextLabel")
    local messageBodyText = Instance.new("TextLabel")
    local messageCornerHidingFrame = Instance.new("Frame")
    local messageCloseButton = Instance.new("ImageButton")
    local successTemplate = Instance.new("Frame")
    local successTemplateFrame = Instance.new("Frame")
    local successTemplateCorner = Instance.new("UICorner")
    local successSeverityFrame = Instance.new("Frame")
    local successSeverityCorner = Instance.new("UICorner")
    local hideSuccessSeverityCornerFrame = Instance.new("Frame")
    local successImage = Instance.new("ImageLabel")
    local successInformationFrame = Instance.new("Frame")
    local successHeadingText = Instance.new("TextLabel")
    local successBodyText = Instance.new("TextLabel")
    local successCornerHidingFrame = Instance.new("Frame")
    local successCloseButton = Instance.new("ImageButton")
    local warningTemplate = Instance.new("Frame")
    local warningTemplateFrame = Instance.new("Frame")
    local warningTemplateCorner = Instance.new("UICorner")
    local warningSeverityFrame = Instance.new("Frame")
    local warningSeverityCorner = Instance.new("UICorner")
    local hideWarningSeverityCornerFrame = Instance.new("Frame")
    local warningImage = Instance.new("ImageLabel")
    local warningInformationFrame = Instance.new("Frame")
    local warningHeadingText = Instance.new("TextLabel")
    local warningBodyText = Instance.new("TextLabel")
    local warningCornerHidingFrame = Instance.new("Frame")
    local warningCloseButton = Instance.new("ImageButton")
    
    local previousUiExists = game:GetService("CoreGui"):FindFirstChild("notifications")
    if previousUiExists then previousUiExists:Destroy() end
    
    openSound.Name = "OpenNotifSound"
    openSound.Volume = 1
    openSound.SoundId = "rbxassetid://9128519965"
    openSound.Parent = ss
    
    closeSound.Name = "CloseNotifSound"
    closeSound.Volume = 1
    closeSound.SoundId = "rbxassetid://9128519965"
    closeSound.Parent = ss
    
    notifications.Name = "notifications"
    notifications.Parent = game:GetService("CoreGui")
    notifications.ZIndexBehavior = Enum.ZIndexBehavior.Global
    notifications.ResetOnSpawn = false
    
    notifsHolderFrame.Name = "notifsHolderFrame"
    notifsHolderFrame.Parent = notifications
    notifsHolderFrame.AnchorPoint = Vector2.new(1, 1)
    notifsHolderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    notifsHolderFrame.BackgroundTransparency = 1
    notifsHolderFrame.BorderSizePixel = 0
    notifsHolderFrame.ClipsDescendants = true
    notifsHolderFrame.Position = UDim2.new(1, 0, 1, -10)
    notifsHolderFrame.Size = UDim2.fromScale(0.25, 0.3)
    
    notifHolderListLayout.Name = "notifHolderListLayout"
    notifHolderListLayout.Parent = notifsHolderFrame
    notifHolderListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    notifHolderListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
    notifHolderListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    notifHolderListLayout.Padding = UDim.new(0, 4)
    
    errorTemplate.Name = "error"
    errorTemplate.AnchorPoint = Vector2.new(1, 1)
    errorTemplate.BackgroundColor3 = Color3.fromRGB(255, 207, 203)
    errorTemplate.BorderSizePixel = 0
    errorTemplate.BackgroundTransparency = 1
    errorTemplate.Position = UDim2.new(1, 0, 1, -100)
    errorTemplate.Size = UDim2.new(1, 0, 0, 40)
    
    errorTemplateFrame.Name = "templateFrame"
    errorTemplateFrame.Parent = errorTemplate
    errorTemplateFrame.BackgroundColor3 = Color3.fromRGB(255, 207, 203)
    errorTemplateFrame.BorderSizePixel = 0
    errorTemplateFrame.Size = UDim2.new(1, 0, 1, 0)
    
    errorTemplateCorner.Name = "templateCorner"
    errorTemplateCorner.Parent = errorTemplateFrame
    
    errorSeverityFrame.Name = "severityFrame"
    errorSeverityFrame.Parent = errorTemplateFrame
    errorSeverityFrame.BackgroundColor3 = Color3.fromRGB(255, 182, 193)
    errorSeverityFrame.Size = UDim2.new(0, 10, 1, 0)
    
    errorSeverityCorner.Name = "severityCorner"
    errorSeverityCorner.Parent = errorSeverityFrame
    
    hideErrorSeverityCornerFrame.Name = "hideSeverityCornerFrame"
    hideErrorSeverityCornerFrame.Parent = errorSeverityFrame
    hideErrorSeverityCornerFrame.BackgroundColor3 = Color3.fromRGB(255, 207, 203)
    hideErrorSeverityCornerFrame.BorderSizePixel = 0
    hideErrorSeverityCornerFrame.Position = UDim2.new(0.5, 0, 0, 0)
    hideErrorSeverityCornerFrame.Size = UDim2.new(0.5, 0, 1, 0)
    
    errorImage.Name = "image"
    errorImage.Parent = errorTemplateFrame
    errorImage.AnchorPoint = Vector2.new(0, 0.5)
    errorImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    errorImage.BackgroundTransparency = 1
    errorImage.BorderSizePixel = 0
    errorImage.Position = UDim2.new(0, 15, 0.5, 0)
    errorImage.Size = UDim2.new(0, 20, 0, 20)
    errorImage.Image = "rbxassetid://9072920609"
    errorImage.ImageColor3 = Color3.fromRGB(255, 182, 193)
    
    errorInformationFrame.Name = "informationFrame"
    errorInformationFrame.Parent = errorTemplateFrame
    errorInformationFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    errorInformationFrame.BackgroundTransparency = 1
    errorInformationFrame.BorderSizePixel = 0
    errorInformationFrame.Position = UDim2.new(0, 45, 0, 0)
    errorInformationFrame.Size = UDim2.new(1, -45 - 25, 1, 0)
    
    errorHeadingText.Name = "headingText"
    errorHeadingText.Parent = errorInformationFrame
    errorHeadingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    errorHeadingText.BackgroundTransparency = 1
    errorHeadingText.BorderSizePixel = 0
    errorHeadingText.ClipsDescendants = true
    errorHeadingText.Size = UDim2.new(1, 0, 0, 20)
    errorHeadingText.Font = Enum.Font.GothamBold
    errorHeadingText.Text = "Error"
    errorHeadingText.TextColor3 = Color3.fromRGB(0, 0, 0)
    errorHeadingText.TextSize = 14
    errorHeadingText.TextXAlignment = Enum.TextXAlignment.Left
    
    errorBodyText.Name = "bodyText"
    errorBodyText.Parent = errorInformationFrame
    errorBodyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    errorBodyText.BackgroundTransparency = 1
    errorBodyText.BorderSizePixel = 0
    errorBodyText.ClipsDescendants = true
    errorBodyText.Position = UDim2.new(0, 0, 0, 20)
    errorBodyText.Size = UDim2.new(1, 0, 1, -20)
    errorBodyText.Font = Enum.Font.GothamSemibold
    errorBodyText.Text = "Error message"
    errorBodyText.TextColor3 = Color3.fromRGB(0, 0, 0)
    errorBodyText.TextSize = 14
    errorBodyText.TextWrapped = true
    errorBodyText.TextXAlignment = Enum.TextXAlignment.Left
    
    errorCornerHidingFrame.Name = "cornerHidingFrame"
    errorCornerHidingFrame.Parent = errorTemplateFrame
    errorCornerHidingFrame.AnchorPoint = Vector2.new(1, 0)
    errorCornerHidingFrame.BackgroundColor3 = Color3.fromRGB(255, 207, 203)
    errorCornerHidingFrame.BorderSizePixel = 0
    errorCornerHidingFrame.Position = UDim2.new(1, 0, 0, 0)
    errorCornerHidingFrame.Size = UDim2.new(.1, 0, 1, 0)
    errorCornerHidingFrame.ZIndex = 0
    
    errorCloseButton.Name = "closeButton"
    errorCloseButton.Parent = errorTemplateFrame
    errorCloseButton.AnchorPoint = Vector2.new(1, 0.5)
    errorCloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    errorCloseButton.BackgroundTransparency = 1
    errorCloseButton.BorderSizePixel = 0
    errorCloseButton.Position = UDim2.new(1, -5, 0.5, 0)
    errorCloseButton.Size = UDim2.new(0, 15, 0, 15)
    errorCloseButton.Image = "rbxassetid://9127564477"
    errorCloseButton.ImageColor3 = Color3.fromRGB(255, 182, 193)
    
    infoTemplate.Name = "info"
    infoTemplate.AnchorPoint = Vector2.new(1, 1)
    infoTemplate.BackgroundColor3 = Color3.fromRGB(204, 226, 254)
    infoTemplate.BorderSizePixel = 0
    infoTemplate.BackgroundTransparency = 1
    infoTemplate.Position = UDim2.new(1, 0, 1, -100)
    infoTemplate.Size = UDim2.new(1, 0, 0, 40)
    
    infoTemplateFrame.Name = "templateFrame"
    infoTemplateFrame.Parent = infoTemplate
    infoTemplateFrame.BackgroundColor3 = Color3.fromRGB(204, 226, 254)
    infoTemplateFrame.BorderSizePixel = 0
    infoTemplateFrame.Size = UDim2.new(1, 0, 1, 0)
    
    infoSeverityFrame.Name = "severityFrame"
    infoSeverityFrame.Parent = infoTemplateFrame
    infoSeverityFrame.BackgroundColor3 = Color3.fromRGB(50, 131, 226)
    infoSeverityFrame.Size = UDim2.new(0, 10, 1, 0)
    
    infoSeverityCorner.Name = "severityCorner"
    infoSeverityCorner.Parent = infoSeverityFrame
    
    hideInfoSeverityCornerFrame.Name = "hideSeverityCornerFrame"
    hideInfoSeverityCornerFrame.Parent = infoSeverityFrame
    hideInfoSeverityCornerFrame.BackgroundColor3 = Color3.fromRGB(204, 226, 254)
    hideInfoSeverityCornerFrame.BorderSizePixel = 0
    hideInfoSeverityCornerFrame.Position = UDim2.new(0.5, 0, 0, 0)
    hideInfoSeverityCornerFrame.Size = UDim2.new(0.5, 0, 1, 0)
    
    infoImage.Name = "image"
    infoImage.Parent = infoTemplateFrame
    infoImage.AnchorPoint = Vector2.new(0, 0.5)
    infoImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    infoImage.BackgroundTransparency = 1
    infoImage.BorderSizePixel = 0
    infoImage.Position = UDim2.new(0, 15, 0.5, 0)
    infoImage.Size = UDim2.new(0, 20, 0, 20)
    infoImage.Image = "rbxassetid://9072944922"
    infoImage.ImageColor3 = Color3.fromRGB(50, 131, 226)
    
    infoInformationFrame.Name = "informationFrame"
    infoInformationFrame.Parent = infoTemplateFrame
    infoInformationFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    infoInformationFrame.BackgroundTransparency = 1
    infoInformationFrame.BorderSizePixel = 0
    infoInformationFrame.Position = UDim2.new(0, 45, 0, 0)
    infoInformationFrame.Size = UDim2.new(1, -45 - 25, 1, 0)
    
    infoHeadingText.Name = "headingText"
    infoHeadingText.Parent = infoInformationFrame
    infoHeadingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    infoHeadingText.BackgroundTransparency = 1
    infoHeadingText.BorderSizePixel = 0
    infoHeadingText.ClipsDescendants = true
    infoHeadingText.Size = UDim2.new(1, 0, 0, 20)
    infoHeadingText.Font = Enum.Font.GothamBold
    infoHeadingText.Text = "Information"
    infoHeadingText.TextColor3 = Color3.fromRGB(0, 0, 0)
    infoHeadingText.TextSize = 14
    infoHeadingText.TextXAlignment = Enum.TextXAlignment.Left
    
    infoBodyText.Name = "bodyText"
    infoBodyText.Parent = infoInformationFrame
    infoBodyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    infoBodyText.BackgroundTransparency = 1
    infoBodyText.BorderSizePixel = 0
    infoBodyText.ClipsDescendants = true
    infoBodyText.Position = UDim2.new(0, 0, 0, 20)
    infoBodyText.Size = UDim2.new(1, 0, 1, -20)
    infoBodyText.Font = Enum.Font.GothamSemibold
    infoBodyText.Text = "Information message"
    infoBodyText.TextColor3 = Color3.fromRGB(0, 0, 0)
    infoBodyText.TextSize = 14
    infoBodyText.TextWrapped = true
    infoBodyText.TextXAlignment = Enum.TextXAlignment.Left
    
    infoCornerHidingFrame.Name = "cornerHidingFrame"
    infoCornerHidingFrame.Parent = infoTemplateFrame
    infoCornerHidingFrame.AnchorPoint = Vector2.new(1, 0)
    infoCornerHidingFrame.BackgroundColor3 = Color3.fromRGB(204, 226, 254)
    infoCornerHidingFrame.BorderSizePixel = 0
    infoCornerHidingFrame.Position = UDim2.new(1, 0, 0, 0)
    infoCornerHidingFrame.Size = UDim2.new(.1, 0, 1, 0)
    infoCornerHidingFrame.ZIndex = 0
    
    infoCloseButton.Name = "closeButton"
    infoCloseButton.Parent = infoTemplateFrame
    infoCloseButton.AnchorPoint = Vector2.new(1, 0.5)
    infoCloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    infoCloseButton.BackgroundTransparency = 1
    infoCloseButton.BorderSizePixel = 0
    infoCloseButton.Position = UDim2.new(1, -5, 0.5, 0)
    infoCloseButton.Size = UDim2.new(0, 15, 0, 15)
    infoCloseButton.Image = "rbxassetid://9127564477"
    infoCloseButton.ImageColor3 = Color3.fromRGB(50, 131, 226)
    
    infoTemplateCorner.Name = "templateCorner"
    infoTemplateCorner.Parent = infoTemplateFrame
    
    messageTemplate.Name = "message"
    messageTemplate.AnchorPoint = Vector2.new(1, 1)
    messageTemplate.BackgroundColor3 = Color3.fromRGB(233, 233, 235)
    messageTemplate.BorderSizePixel = 0
    messageTemplate.BackgroundTransparency = 1
    messageTemplate.Position = UDim2.new(1, 0, 1, -100)
    messageTemplate.Size = UDim2.new(1, 0, 0, 40)
    
    messageTemplateFrame.Name = "templateFrame"
    messageTemplateFrame.Parent = messageTemplate
    messageTemplateFrame.BackgroundColor3 = Color3.fromRGB(233, 233, 235)
    messageTemplateFrame.BorderSizePixel = 0
    messageTemplateFrame.Size = UDim2.new(1, 0, 1, 0)
    
    messageTemplateCorner.Name = "templateCorner"
    messageTemplateCorner.Parent = messageTemplateFrame
    
    messageSeverityFrame.Name = "severityFrame"
    messageSeverityFrame.Parent = messageTemplateFrame
    messageSeverityFrame.BackgroundColor3 = Color3.fromRGB(112, 118, 130)
    messageSeverityFrame.Size = UDim2.new(0, 10, 1, 0)
    
    messageSeverityCorner.Name = "severityCorner"
    messageSeverityCorner.Parent = messageSeverityFrame
    
    hideMessageSeverityCornerFrame.Name = "hideSeverityCornerFrame"
    hideMessageSeverityCornerFrame.Parent = messageSeverityFrame
    hideMessageSeverityCornerFrame.BackgroundColor3 = Color3.fromRGB(233, 233, 235)
    hideMessageSeverityCornerFrame.BorderSizePixel = 0
    hideMessageSeverityCornerFrame.Position = UDim2.new(0.5, 0, 0, 0)
    hideMessageSeverityCornerFrame.Size = UDim2.new(0.5, 0, 1, 0)
    
    messageInformationFrame.Name = "informationFrame"
    messageInformationFrame.Parent = messageTemplateFrame
    messageInformationFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    messageInformationFrame.BackgroundTransparency = 1
    messageInformationFrame.BorderSizePixel = 0
    messageInformationFrame.Position = UDim2.new(0, 15, 0, 0)
    messageInformationFrame.Size = UDim2.new(1, -40, 1, 0)
    
    messageHeadingText.Name = "headingText"
    messageHeadingText.Parent = messageInformationFrame
    messageHeadingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    messageHeadingText.BackgroundTransparency = 1
    messageHeadingText.BorderSizePixel = 0
    messageHeadingText.ClipsDescendants = true
    messageHeadingText.Size = UDim2.new(1, 0, 0, 20)
    messageHeadingText.Font = Enum.Font.GothamBold
    messageHeadingText.Text = "Custom message"
    messageHeadingText.TextColor3 = Color3.fromRGB(0, 0, 0)
    messageHeadingText.TextSize = 14
    messageHeadingText.TextXAlignment = Enum.TextXAlignment.Left
    
    messageBodyText.Name = "bodyText"
    messageBodyText.Parent = messageInformationFrame
    messageBodyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    messageBodyText.BackgroundTransparency = 1
    messageBodyText.BorderSizePixel = 0
    messageBodyText.ClipsDescendants = true
    messageBodyText.Position = UDim2.new(0, 0, 0, 20)
    messageBodyText.Size = UDim2.new(1, 0, 1, -20)
    messageBodyText.Font = Enum.Font.GothamSemibold
    messageBodyText.Text = "Custom message"
    messageBodyText.TextColor3 = Color3.fromRGB(0, 0, 0)
    messageBodyText.TextSize = 14
    messageBodyText.TextWrapped = true
    messageBodyText.TextXAlignment = Enum.TextXAlignment.Left
    
    messageCornerHidingFrame.Name = "cornerHidingFrame"
    messageCornerHidingFrame.Parent = messageTemplateFrame
    messageCornerHidingFrame.AnchorPoint = Vector2.new(1, 0)
    messageCornerHidingFrame.BackgroundColor3 = Color3.fromRGB(233, 233, 235)
    messageCornerHidingFrame.BorderSizePixel = 0
    messageCornerHidingFrame.Position = UDim2.new(1, 0, 0, 0)
    messageCornerHidingFrame.Size = UDim2.new(.1, 0, 1, 0)
    messageCornerHidingFrame.ZIndex = 0
    
    messageCloseButton.Name = "closeButton"
    messageCloseButton.Parent = messageTemplateFrame
    messageCloseButton.AnchorPoint = Vector2.new(1, 0.5)
    messageCloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    messageCloseButton.BackgroundTransparency = 1
    messageCloseButton.BorderSizePixel = 0
    messageCloseButton.Position = UDim2.new(1, -5, 0.5, 0)
    messageCloseButton.Size = UDim2.new(0, 15, 0, 15)
    messageCloseButton.Image = "rbxassetid://9127564477"
    messageCloseButton.ImageColor3 = Color3.fromRGB(112, 118, 130)
    
    successTemplate.Name = "success"
    successTemplate.AnchorPoint = Vector2.new(1, 1)
    successTemplate.BackgroundColor3 = Color3.fromRGB(196, 247, 221)
    successTemplate.BorderSizePixel = 0
    successTemplate.BackgroundTransparency = 1
    successTemplate.Position = UDim2.new(1, 0, 1, -100)
    successTemplate.Size = UDim2.new(1, 0, 0, 40)
    
    successTemplateFrame.Name = "templateFrame"
    successTemplateFrame.Parent = successTemplate
    successTemplateFrame.BackgroundColor3 = Color3.fromRGB(196, 247, 221)
    successTemplateFrame.BorderSizePixel = 0
    successTemplateFrame.Size = UDim2.new(1, 0, 1, 0)
    
    successTemplateCorner.Name = "templateCorner"
    successTemplateCorner.Parent = successTemplateFrame
    
    successSeverityFrame.Name = "severityFrame"
    successSeverityFrame.Parent = successTemplateFrame
    successSeverityFrame.BackgroundColor3 = Color3.fromRGB(50, 195, 125)
    successSeverityFrame.Size = UDim2.new(0, 10, 1, 0)
    
    successSeverityCorner.Name = "severityCorner"
    successSeverityCorner.Parent = successSeverityFrame
    
    hideSuccessSeverityCornerFrame.Name = "hideSeverityCornerFrame"
    hideSuccessSeverityCornerFrame.Parent = successSeverityFrame
    hideSuccessSeverityCornerFrame.BackgroundColor3 = Color3.fromRGB(196, 247, 221)
    hideSuccessSeverityCornerFrame.BorderSizePixel = 0
    hideSuccessSeverityCornerFrame.Position = UDim2.new(0.5, 0, 0, 0)
    hideSuccessSeverityCornerFrame.Size = UDim2.new(0.5, 0, 1, 0)
    
    successImage.Name = "image"
    successImage.Parent = successTemplateFrame
    successImage.AnchorPoint = Vector2.new(0, 0.5)
    successImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    successImage.BackgroundTransparency = 1
    successImage.BorderSizePixel = 0
    successImage.Position = UDim2.new(0, 15, 0.5, 0)
    successImage.Size = UDim2.new(0, 20, 0, 20)
    successImage.Image = "rbxassetid://9073052584"
    successImage.ImageColor3 = Color3.fromRGB(50, 195, 125)
    
    successInformationFrame.Name = "informationFrame"
    successInformationFrame.Parent = successTemplateFrame
    successInformationFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    successInformationFrame.BackgroundTransparency = 1
    successInformationFrame.BorderSizePixel = 0
    successInformationFrame.Position = UDim2.new(0, 45, 0, 0)
    successInformationFrame.Size = UDim2.new(1, -45 - 25, 1, 0)
    
    successHeadingText.Name = "headingText"
    successHeadingText.Parent = successInformationFrame
    successHeadingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    successHeadingText.BackgroundTransparency = 1
    successHeadingText.BorderSizePixel = 0
    successHeadingText.ClipsDescendants = true
    successHeadingText.Size = UDim2.new(1, 0, 0, 20)
    successHeadingText.Font = Enum.Font.GothamBold
    successHeadingText.Text = "Success"
    successHeadingText.TextColor3 = Color3.fromRGB(0, 0, 0)
    successHeadingText.TextSize = 14
    successHeadingText.TextXAlignment = Enum.TextXAlignment.Left
    
    successBodyText.Name = "bodyText"
    successBodyText.Parent = successInformationFrame
    successBodyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    successBodyText.BackgroundTransparency = 1
    successBodyText.BorderSizePixel = 0
    successBodyText.ClipsDescendants = true
    successBodyText.Position = UDim2.new(0, 0, 0, 20)
    successBodyText.Size = UDim2.new(1, 0, 1, -20)
    successBodyText.Font = Enum.Font.GothamSemibold
    successBodyText.Text = "Success message"
    successBodyText.TextColor3 = Color3.fromRGB(0, 0, 0)
    successBodyText.TextSize = 14
    successBodyText.TextWrapped = true
    successBodyText.TextXAlignment = Enum.TextXAlignment.Left
    
    successCornerHidingFrame.Name = "cornerHidingFrame"
    successCornerHidingFrame.Parent = successTemplateFrame
    successCornerHidingFrame.AnchorPoint = Vector2.new(1, 0)
    successCornerHidingFrame.BackgroundColor3 = Color3.fromRGB(196, 247, 221)
    successCornerHidingFrame.BorderSizePixel = 0
    successCornerHidingFrame.Position = UDim2.new(1, 0, 0, 0)
    successCornerHidingFrame.Size = UDim2.new(.1, 0, 1, 0)
    successCornerHidingFrame.ZIndex = 0
    
    successCloseButton.Name = "closeButton"
    successCloseButton.Parent = successTemplateFrame
    successCloseButton.AnchorPoint = Vector2.new(1, 0.5)
    successCloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    successCloseButton.BackgroundTransparency = 1
    successCloseButton.BorderSizePixel = 0
    successCloseButton.Position = UDim2.new(1, -5, 0.5, 0)
    successCloseButton.Size = UDim2.new(0, 15, 0, 15)
    successCloseButton.Image = "rbxassetid://9127564477"
    successCloseButton.ImageColor3 = Color3.fromRGB(50, 195, 125)
    
    warningTemplate.Name = "warning"
    warningTemplate.AnchorPoint = Vector2.new(1, 1)
    warningTemplate.BackgroundColor3 = Color3.fromRGB(255, 232, 197)
    warningTemplate.BorderSizePixel = 0
    warningTemplate.BackgroundTransparency = 1
    warningTemplate.Position = UDim2.new(1, 0, 1, -100)
    warningTemplate.Size = UDim2.new(1, 0, 0, 40)
    
    warningTemplateFrame.Name = "templateFrame"
    warningTemplateFrame.Parent = warningTemplate
    warningTemplateFrame.BackgroundColor3 = Color3.fromRGB(255, 232, 197)
    warningTemplateFrame.BorderSizePixel = 0
    warningTemplateFrame.Size = UDim2.new(1, 0, 1, 0)
    
    warningTemplateCorner.Name = "templateCorner"
    warningTemplateCorner.Parent = warningTemplateFrame
    
    warningSeverityFrame.Name = "severityFrame"
    warningSeverityFrame.Parent = warningTemplateFrame
    warningSeverityFrame.BackgroundColor3 = Color3.fromRGB(234, 159, 53)
    warningSeverityFrame.Size = UDim2.new(0, 10, 1, 0)
    
    warningSeverityCorner.Name = "severityCorner"
    warningSeverityCorner.Parent = warningSeverityFrame
    
    hideWarningSeverityCornerFrame.Name = "hideSeverityCornerFrame"
    hideWarningSeverityCornerFrame.Parent = warningSeverityFrame
    hideWarningSeverityCornerFrame.BackgroundColor3 = Color3.fromRGB(255, 232, 197)
    hideWarningSeverityCornerFrame.BorderSizePixel = 0
    hideWarningSeverityCornerFrame.Position = UDim2.new(0.5, 0, 0, 0)
    hideWarningSeverityCornerFrame.Size = UDim2.new(0.5, 0, 1, 0)
    
    warningImage.Name = "image"
    warningImage.Parent = warningTemplateFrame
    warningImage.AnchorPoint = Vector2.new(0, 0.5)
    warningImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    warningImage.BackgroundTransparency = 1
    warningImage.BorderSizePixel = 0
    warningImage.Position = UDim2.new(0, 15, 0.5, 0)
    warningImage.Size = UDim2.new(0, 20, 0, 20)
    warningImage.Image = "rbxassetid://9072448788"
    warningImage.ImageColor3 = Color3.fromRGB(234, 159, 53)
    
    warningInformationFrame.Name = "informationFrame"
    warningInformationFrame.Parent = warningTemplateFrame
    warningInformationFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    warningInformationFrame.BackgroundTransparency = 1
    warningInformationFrame.BorderSizePixel = 0
    warningInformationFrame.Position = UDim2.new(0, 45, 0, 0)
    warningInformationFrame.Size = UDim2.new(1, -45 - 25, 1, 0)
    
    warningHeadingText.Name = "headingText"
    warningHeadingText.Parent = warningInformationFrame
    warningHeadingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    warningHeadingText.BackgroundTransparency = 1
    warningHeadingText.BorderSizePixel = 0
    warningHeadingText.ClipsDescendants = true
    warningHeadingText.Size = UDim2.new(1, 0, 0, 20)
    warningHeadingText.Font = Enum.Font.GothamBold
    warningHeadingText.Text = "Warning"
    warningHeadingText.TextColor3 = Color3.fromRGB(0, 0, 0)
    warningHeadingText.TextSize = 14
    warningHeadingText.TextXAlignment = Enum.TextXAlignment.Left
    
    warningBodyText.Name = "bodyText"
    warningBodyText.Parent = warningInformationFrame
    warningBodyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    warningBodyText.BackgroundTransparency = 1
    warningBodyText.BorderSizePixel = 0
    warningBodyText.ClipsDescendants = true
    warningBodyText.Position = UDim2.new(0, 0, 0, 20)
    warningBodyText.Size = UDim2.new(1, 0, 1, -20)
    warningBodyText.Font = Enum.Font.GothamSemibold
    warningBodyText.Text = "Warning message"
    warningBodyText.TextColor3 = Color3.fromRGB(0, 0, 0)
    warningBodyText.TextSize = 14
    warningBodyText.TextWrapped = true
    warningBodyText.TextXAlignment = Enum.TextXAlignment.Left
    
    warningCornerHidingFrame.Name = "cornerHidingFrame"
    warningCornerHidingFrame.Parent = warningTemplateFrame
    warningCornerHidingFrame.AnchorPoint = Vector2.new(1, 0)
    warningCornerHidingFrame.BackgroundColor3 = Color3.fromRGB(255, 232, 197)
    warningCornerHidingFrame.BorderSizePixel = 0
    warningCornerHidingFrame.Position = UDim2.new(1, 0, 0, 0)
    warningCornerHidingFrame.Size = UDim2.new(.1, 0, 1, 0)
    warningCornerHidingFrame.ZIndex = 0
    
    warningCloseButton.Name = "closeButton"
    warningCloseButton.Parent = warningTemplateFrame
    warningCloseButton.AnchorPoint = Vector2.new(1, 0.5)
    warningCloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    warningCloseButton.BackgroundTransparency = 1
    warningCloseButton.BorderSizePixel = 0
    warningCloseButton.Position = UDim2.new(1, -5, 0.5, 0)
    warningCloseButton.Size = UDim2.new(0, 15, 0, 15)
    warningCloseButton.Image = "rbxassetid://9127564477"
    warningCloseButton.ImageColor3 = Color3.fromRGB(234, 159, 53)
    
    local function scaleNotifHolderMaxNotifs()
        local amountOfNotifsInFrame = math.floor(notifsHolderFrame.AbsoluteSize.Y/40)
        local notifsHolderFramePadding = amountOfNotifsInFrame * notifHolderListLayout.Padding.Offset
        notifsHolderFrame.Size = UDim2.new(.25,0,0,amountOfNotifsInFrame * 40 + notifsHolderFramePadding)
    end
    
    local function deleteNotifsOutsideFrame()
        if notifHolderListLayout.AbsoluteContentSize.Y < notifsHolderFrame.AbsoluteSize.Y then return end
        for _, notif in pairs(notifsHolderFrame:GetChildren()) do
            if not notif:IsA("Frame") then continue end
            if notif.AbsolutePosition.Y > notifsHolderFrame.AbsolutePosition.Y then continue end
            notif:Destroy()
        end
    end
    
    function Notification.new(notifType, string, heading, string, body, string, autoRemove, boolean, autoRemoveTime, number, callback)
        local notificationTypes = {
            ["error"] = errorTemplate,
            ["info"] = infoTemplate,
            ["message"] = messageTemplate,
            ["success"] = successTemplate,
            ["warning"] = warningTemplate
        }
    
        local notif = notificationTypes[notifType:lower()]
        assert(notif, "Notification type not valid\nValid Types: {\n\tError\n\tInfo\n\tMessage\n\tSuccess\n\tWarning\n}")
        notif = notif:Clone()
        notif.templateFrame.Position = UDim2.new(1,0,0,0)
    
        local function checkTextSize()
            local infoFrame = notif.templateFrame.informationFrame
            local requiredHeadingSize = txtS:GetTextSize(infoFrame.headingText.Text, infoFrame.headingText.TextSize, infoFrame.headingText.Font, Vector2.new(10000,10000)).X 
            local requiredBodySize = txtS:GetTextSize(infoFrame.bodyText.Text, infoFrame.bodyText.TextSize, infoFrame.bodyText.Font, Vector2.new(10000,10000)).X   
            if requiredHeadingSize + 45 + 25 > notifsHolderFrame.AbsoluteSize.X then
                warn("Heading size is too long (Notification Library)")
            end
            if requiredBodySize + 45 + 25 > notifsHolderFrame.AbsoluteSize.X then
                warn("Body size is too long (Notification Library)")
            end
        end
    
        local function openNotif()
            local function playOpenNotifTween()
                ts:Create(notif.templateFrame, TweenInfo.new(.25), {Position = UDim2.new(0,0,0,0)}):Play()
            end
    
            openSound:Play()
            playOpenNotifTween()
        end
    
        local function closeNotif()
            coroutine.wrap(function()
                local function playCloseNotifTween()
                    local closeTween = ts:Create(notif.templateFrame, TweenInfo.new(.25), {Position = UDim2.new(1,0,0,0)})
                    closeTween:Play()
                    closeTween.Completed:Wait()
                end
                
                closeSound:Play()
                if callback then callback() end
                playCloseNotifTween()
                notif:Destroy()
            end)()
        end
    
        notif.templateFrame.closeButton.MouseButton1Click:Connect(closeNotif)
        notif.templateFrame.informationFrame.headingText.Text = heading
        notif.templateFrame.informationFrame.bodyText.Text = body
        notif.Parent = notifsHolderFrame
        checkTextSize()
        openNotif()
    
        if autoRemove then
            coroutine.wrap(function()
                autoRemoveTime = autoRemoveTime or 5
                task.wait(autoRemoveTime)
                if notif and notif:FindFirstChild("templateFrame") then
                    closeNotif()
                end
            end)()
        end
    
        local newNotif = setmetatable({}, Notification)
        newNotif.Instance = notif
        newNotif.Heading = heading
        newNotif.Body = body
        newNotif.Type = notifType:lower()
    
        return newNotif
    end
    
    function Notification:changeHeading(newHeading,string)
        coroutine.wrap(function()
            if not self.Instance or not self.Instance:FindFirstChild("templateFrame") then return end
            self.Instance.templateFrame.informationFrame.headingText.Text = newHeading
        end)()
    end
    
    function Notification:changeBody(newBody, string)
        coroutine.wrap(function()
            if not self.Instance or not self.Instance:FindFirstChild("templateFrame") then return end
            self.Instance.templateFrame.informationFrame.bodyText.Text = newBody
        end)()
    end
    
    function Notification:deleteTimeout(waitTime, number)
        coroutine.wrap(function()
            if not self.Instance or not self.Instance:FindFirstChild("templateFrame") then return end
            local closeTween = ts:Create(self.Instance.templateFrame, TweenInfo.new(.25), {Position = UDim2.new(1,0,0,0)})
            waitTime = waitTime or 3
            task.wait(waitTime)
            if not self.Instance or not self.Instance:FindFirstChild("templateFrame") then return end
            closeTween:Play()
            closeTween.Completed:Wait()
            if self.Instance then return end
            self.Instance:Destroy()
        end)()
    end
    
    function Notification:delete()
        coroutine.wrap(function()
            if not self.Instance or not self.Instance:FindFirstChild("templateFrame") then return end
            local closeTween = ts:Create(self.Instance.templateFrame, TweenInfo.new(.25), {Position = UDim2.new(1,0,0,0)})
            closeTween:Play()
            closeTween.Completed:Wait()
            if not self.Instance then return end
            self.Instance:Destroy()
        end)()
    end
    
    scaleNotifHolderMaxNotifs()
    notifHolderListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(deleteNotifsOutsideFrame)
