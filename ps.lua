local Config = {
    WindowName = "Fu Kang Hub",
	Color = Color3.fromRGB(0,247,255),
	Keybind = Enum.KeyCode.insert
}


local VirtualUser = game:GetService("VirtualUser")
local VirtualInputManager = game:GetService("VirtualInputManager")


repeat wait() until game:IsLoaded() wait()
Player.Idled:connect(function()
VirtualUser:ClickButton2(Vector2.new())
end)


local OldNameCall
OldNameCall = hookmetamethod(game, "__newindex", function(A, B, C)
    if (not checkcaller() and A.ClassName == "Humanoid" and (B == "WalkSpeed" or B == "JumpPower")) then
        return
    end
    return OldNameCall(A, B, C)
end)
uu = 75
aa = 0
delay = 2
delay2 = 0
for i, v in pairs(Workspace.Map2:GetDescendants()) do
if v.Name == "Beach Chairs" then
v:remove()
end end
local LP = Player
local ts = TweenService
local function Tween(part, endpos, speed)
    if part and endpos then
        local Time = (endpos - part.Position).magnitude/speed
        local Info = TweenInfo.new(Time, Enum.EasingStyle.Linear)
        local Tween = ts:Create(part,Info,{CFrame = CFrame.new(endpos.X,endpos.Y,endpos.Z)})
        Tween:Play()
        wait(Time)
    end
end

Quests = {}
for i, v in pairs(ReplicatedStorage.Quests:GetChildren()) do
    table.insert(Quests, v.Name)
end
Player.Character.Humanoid.WalkSpeed = 50
Player.CharacterAdded:Connect(
    function()
        repeat
            wait()
        until Player.Character
        wait(3)
        Player.Character.Humanoid.WalkSpeed = 50
    end
)
for i, v in pairs(Workspace:GetChildren()) do
    if v.ClassName == "Part" or v.ClassName == "Script" and  v.Parent == Workspace  then
        v:remove()
    end
end

game:GetService("RunService").Stepped:connect(function()
        pcall(function()
                if Player.Character.Head:FindFirstChild("Overhead") then
                    Player.Character.Head.Overhead:remove()
                end
            end
        )
    end
)


function c()
    for i, v in pairs(Player.Backpack:GetChildren()) do
        if v.ClassName == "Tool" and v:FindFirstChild("Combat Script") then
            Player.Character.Humanoid:EquipTool(v)
        end
    end
end


local Equiped = Instance.new("BoolValue")
Equiped.Parent = Player.Character
Equiped.Name = "Tool"
Player.CharacterAdded:Connect(
    function()
        wait(2)
        local Equiped = Instance.new("BoolValue")
        Equiped.Parent = Player.Character
        Equiped.Name = "Tool"
    end
)
local Equiped = function(A)
    if A:IsA("Tool") then
        Player.Character.Tool.Value = true
        wait(1)
        Player.Character.Animate.Disabled = true
        Player.Character.Animate.Disabled = false
    end
end

Player.Character.ChildAdded:Connect(
    function(v)
        if v:IsA("Tool") then
            Equiped(v)
        end
    end
)
Player.Character.ChildRemoved:Connect(
    function(v)
        if v:IsA("Tool") then
            Player.Character.Tool.Value = false
        end
    end
)

code = {}
for i, v in pairs(Player.Codes:GetDescendants()) do
    table.insert(code, v.Name)
end
game:GetService("RunService").Stepped:connect(function()
        sethiddenproperty(Player, "SimulationRadius", 1000)
    end
)

ab1 = {
    "Blaze",
    "Fire Breath",
    "Sound Breathing",
    "Insect Breathing",
    "Voice",
    "Sleep-Inducing Gas",
    "Simon's Dark Magic",
    "Purple Flare",
    "Blazing Knight",
    "Burning Spear",
    "Shock Fist",
    "Ittoryu; Wado Ichimonji",
    "Ittoryu; Shusui",
    "Black Leg Style",
    "Moku Moku no mi",
    "Pika Pika no mi",
    "Kage Kage no mi",
    "Mera Mera no mi",
    "Cremation",
    "Electrification",
    "Gura Gura no mi",
    "Goro Goro no mi",
    "Yami Yami no mi",
    "Determined Defender Goku",
    "Yami's Dark Magic",
    "The Trump Card Goku",
    "Explosive Super Elite Vegeta",
    "Magma Knight",
    "Scorching Spear",
    "Bolt Master",
    "Diable Jambe"
}
ab2 = {
    "Nagi Nagi no mi v1",
    "Flashstep",
    "Nagi Nagi no mi v2",
    "Suke Suke no mi v1",
    "Sonido",
    "Danger Sense v1",
    "Danger Sense v2",
    "Hirenkyaku"
}
ab3 = {
    "Ashen Mage",
    "Ash Crow",
    "Berserker",
    "Black Foot",
    "Black Swordsman",
    "Cotton Candy Lover",
    "Cat Burglar",
    "Cyborg",
    "Devils Child",
    "Demon God",
    "Falcon of Light",
    "Fire Fist",
    "Falcon of Darkness",
    "flamingo lord",
    "God of Calamity",
    "God",
    "He Who is Above God",
    "Iron Man",
    "Iron Mace",
    "King of The Sea",
    "Knight of the Sea",
    "Loan Shark",
    "Nobody",
    "One Piecee",
    "Pirate Hunter",
    "Slug Baron",
    "Symbol of Evil",
    "Shiva",
    "Soul King",
    "Struggler",
    "Straw Hat",
    "The Beast Tamer",
    "The Forbidden One",
    "Thunder Emperor",
    "The Acrobat",
    "White Falcon",
    "God of Destruction"
}
ab4 = {
    "Human",
    "Ghoul",
    "Namekian",
    "Kumate Tribe",
    "Spypiean",
    "Torino Tribe",
    "Vermin",
    "A Bizarre Human",
    "Human (Hybrid)",
    "Mink",
    "Celestial Dragon",
    "Frieza Race",
    "Fanalis",
    "Uzumaki Clan",
    "Saiyan"
}
ab5 = {
    "Hisashi Midoriya",
    "Cain Barzad",
    "Present Mic",
    "Ace",
    "Enel",
    "Whitebeard",
    "Dabi",
    "Gecko Moria"
}
ab6 = {
    "Potency",
    "Resilience",
    "Speed",
    "Angry",
    "Balanced",
    "Brave",
    "Brute",
    "Compassionate",
    "Courageous",
    "Fighter",
    "Fragile",
    "Humble",
    "Hypersonic",
    "Indestructible",
    "Inspiring",
    "Legendary",
    "Light",
    "Mighty",
    "Muscular",
    "Noble",
    "Paranoid",
    "Patient",
    "Perfect",
    "Powerful",
    "Quick",
    "Resilient",
    "Sensitive",
    "Slim",
    "Slow",
    "Slugger",
    "Speedy",
    "Strong",
    "Tank",
    "Tough",
    "Useless",
    "Valiant",
    "Weak"
}
ab7 = {
    "Bruiser",
    "Scrapper",
    "Infiltrator",
    "Tactician",
    "Blaster"
}
ab8 = {
    "Hunter Snow Cap",
    "Paper Hat",
    "Du-rag",
    "Ski Cap",
    "Straw Hat",
    "White Du-rag",
    "Dark Hood",
    "Bamboo Hat",
    "Fancy Black Cowboy Hat",
    "Snake Slate Hood",
    "Socialite Hat",
    "The Eliminator Hood",
    "Ruby Adorned Fencer Helmet",
    "Triple Threat Helmet",
    "Yellow Banded Top Hat",
    "Green Banded Top Hat",
    "Purple Banded Top Hat",
    "Blue Banded Top Hat",
    "Bathysphere",
    "Bluesteel Bathysphere",
    "Bucket",
    "Bandit's Mask",
    "Black Ninja Headband",
    "Black Round Glasses",
    "Crimson Winter Scarf",
    "Dust Mask",
    "Eyepatch",
    "Purple Pirate Headband",
    "Rose Colored Glasses",
    "Round Glasses",
    "Shredded Bandit Mask",
    "White Ninja Headband"
}
ab10 = {
    "One Tomoe Sharingan",
    "Two Tomoe Sharingan",
    "Three Tomoe Sharingan",
    "Izuna's Mangekyo Sharingan v1",
    "Indra's Mangekyo Sharingan v1",
    "Sasuke's Mangekyo Sharingan v2",
    "Obito's Mangekyo Sharingan v1",
    "Itachi's Mangekyou Sharingan v1",
    "Itachi's Mangekyo Sharingan v2",
    "Madara's Mangekyo Sharingan v1",
    "Madara's Mangekyo Sharingan v2",
    "Obito's Mangekyo sharingan v2"
}
ab9 = {
    "Black Knight Armor",
    "Blue Knight Armor",
    "Bounty Hunter's Gambeson",
    "Carta Assassin Armor",
    "Disciple's Armor",
    "Elite Mercenary Coat",
    "Enchanter Robes",
    "Fancy Suit",
    "Griffon Plate",
    "Heavy Adventurer Armor",
    "Innkeeper's Attire",
    "Iron Armor",
    "Leather Armor",
    "Mercenary Coat",
    "Nalthur's Armor",
    "Oathbreaker's Armor",
    "Pirate Hunter's Starter Outfit",
    "Pirate's Outfit",
    "Rice Farmer's Outfit",
    "Squire Armor",
    "Rugged Adventurer Armor",
    "Steel Armor",
    "Superior Battlemaster Coat",
    "Superior Battlemaster Armor",
    "Superior Battlemaster Mail",
    "Superior Enchanter Coat",
    "Superior Vanguard Armor",
    "Templar Commander Armor",
    "Titanium Armor",
    "Vanguard Armor",
    "Wizard Robes",
    "Ancient Empyrean Armor",
    "Ash Trap Mage's Outfit",
    "Usopp's Pre Time-Skip Outfit",
    "Franky's Outfit",
    "Buggy's Outfit",
    "Enel's Outfit",
    "Enel's Outfit 2",
    "Blackbeard's Outfit",
    "Blackbeard's Outfit 2",
    "Kidd's Outfit",
    "UA Student's Outfit",
    "The Almighty's Outfit",
    "Muken Aizen's Outfit",
    "Jiren's Outfit",
    "Overhaul's Outfit",
    "Usopp's Post Time-Skip Outfit",
    "Magellan's Outfit",
    "Black Foot's Outfit",
    "Luffy's Marineford Outfit",
    "Crocodile's Pre Time-Skip Outfit",
    "Prime Whitebeard's Outfit",
    "Sanji's Post Time-Skip Outfit",
    "Kaido's Outfit",
    "Kaido's Outfit 2",
    "Dragon's Outfit"
}
aka = {
    "Requiem Arrow",
    "Lucky Arrow"
}
system = {
    "Bandit",
    "Agni's Overseer",
    "Agni's Minion",
    "Lars' Minion",
    "Lars' Overseer",
    "Rahgan's Minion",
    "Rahgan's Overseer"
}

local Part = Instance.new("Part", Workspace)
Part.Name = "poopy"
Part.Size = Vector3.new(9e9, 0, 9e9)
Part.Anchored = true
Part.Transparency = 1


local Vet = VirtualInputManager
local Players = Players
local LocalPlayer = Player
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/test"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("Project XL")
local Tab2 = Window:CreateTab("UI Settings")

local Section1 = Tab1:CreateSection("AutoFarms")
local Section2 = Tab1:CreateSection("Auto Stuff")
local SectionA = Tab1:CreateSection("Misc")
local Section3 = Tab2:CreateSection("Menu")
local Section4 = Tab2:CreateSection("Background")

local Toggle1 = Section1:CreateToggle("Auto Attack", nil, function(State)
w2 = State
while w2 do
    wait()
    ReplicatedStorage.RemoteEvents.BladeCombatRemote:FireServer(false, nil, nil)
end
end)
local Toggle1 = Section1:CreateToggle("Auto Skills", nil, function(State)
for i, v in pairs({"E", "R", "C", "X", "Y", "V"}) do
    ee = State
    coroutine.wrap(function()--Credits for help/teaching me coroutine.wrap by nil#0001
            while ee do
                wait()
                Vet:SendKeyEvent(true, v, false, uwu)
            end
        end
    )()
end
end)
local Toggle1 = Section1:CreateToggle("Auto Dummy", nil, function(State)
yourdumb = State
game:GetService("RunService").Stepped:connect(
    function()
        if yourdumb then
            LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(11)
        end
    end
)
while yourdumb do
    wait()
    pcall(function()
            c()
            wait()
            ReplicatedStorage.RemoteEvents.BladeCombatRemote:FireServer(false, nil, nil)
            LocalPlayer.Character.HumanoidRootPart.CFrame =
                Workspace.Live["Training dummy"].Torso.CFrame * CFrame.new(-7, 0, 0) * CFrame.Angles(aa, 0, 0)
            if not yourdumb then
                LocalPlayer.Character.HumanoidRootPart.CFrame =
                Workspace.SafeZoneIndicator.CFrame * CFrame.new(0, 5, 0)
            end
        end
    )
end
end)

local Toggle1 =Section1:CreateToggle("Legit Mode", nil, function(State)
Legit = State
game:GetService("RunService").Stepped:connect(
    function()
        pcall(
            function()
                if Legit then
                    Player.Character.Humanoid:ChangeState(11)
                end
            end
        )
    end
)
spawn(
    function()
        while Legit do
            wait()
            pcall(
                function()
                    Player.Character.HumanoidRootPart.CFrame = CFrame.new(-2846, 334, 2919)
                    VirtualUser:ClickButton1(Vector2.new(9e9, 9e9))
                end
            )
        end
    end
)
c()
Player.CharacterAdded:Connect(
    function()
        repeat
            wait()
        until LocalPlayer.Character
        pcall(
            function()
                if Legit then
                    wait(3)
                    c()
                end
            end
        )
    end
)
end)


local Toggle1 = Section1:CreateToggle("GodMode", nil, function(State)
god = State
game:GetService("RunService").Stepped:connect(function()
pcall(function()
        if Player.Character.CharacterValues:FindFirstChild("DamageDivider") then
            if god then
                Player.Character.CharacterValues:WaitForChild("DamageDivider"):remove()
            end
        end
        end)
    end
)
if not god then
    Player.Character.Humanoid.Health = 0
end
end)



local Toggle1 = Section1:CreateToggle("StatusImmune", nil, function(State)
gods = State
game:GetService("RunService").Stepped:connect(function()
pcall(function()
        if Player.Character.CharacterValues:FindFirstChild("StatusImmune") then
            if gods then
                Player.Character.CharacterValues.StatusImmune:remove()
            end
        end
        end)
    end
)
if not gods then
    Player.Character.Humanoid.Health = 0
end
end)
Toggle1:AddToolTip("Makes your StatusImmune to any stun attack such as fire etc")
local Toggle1 = Section1:CreateToggle("No CooldownReduction", nil, function(State)
nocool = State
while wait() do
    wait()
    if nocool then
        Player.PlayerValues.CooldownReduction.Value = -9e9
    else
        Player.PlayerValues.CooldownReduction.Value = 1
    end
end
end)
Toggle1:AddToolTip("Makes Abilitys have no anmation Cooldown")


local Toggle1 = Section1:CreateToggle("Player Silent Aim", nil, function(State)
Player = State

local Players = Players
local LocalPlayer = Player
local Mouse = LocalPlayer:GetMouse()
function ClosestPlayerToCurser()
    local MaxDistance, Closest = math.huge
    for i, v in pairs(Players.GetPlayers(Players)) do
        if v ~= LocalPlayer and v.Character then
            local H = v.Character.FindFirstChild(v.Character, "Head")
            if H then
                local Pos, Vis = Workspace.CurrentCamera.WorldToScreenPoint(Workspace.CurrentCamera, H.Position)
                if Vis then
                    local A1, A2 = Vector2.new(Mouse.X, Mouse.Y), Vector2.new(Pos.X, Pos.Y)
                    local Dist = (A2 - A1).Magnitude
                    if Dist < MaxDistance and Dist <= math.huge then
                        MaxDistance = Dist
                        Closest = v
                    end
                end
            end
        end
    end
    return Closest
end


local OldIndex = nil
OldIndex =
    hookmetamethod(
    game,
    "__index",
    function(self, v, ...)
        if self == Mouse and (v == "Hit" or v == "Target") then
            if ClosestPlayerToCurser() and Player then
                return ((v == "Hit" and ((ClosestPlayerToCurser().Character.Head.CFrame) or (ClosestPlayerToCurser().Character.Head.CFrame + (ClosestPlayerToCurser().Character.Head.Velocity)))) or
                    (v == "Target" and ClosestPlayerToCurser().Character.Head))
            end
        end

        return OldIndex(self, v)
    end
)
end)
local Toggle1 = Section1:CreateToggle("Mob Silent Aim", nil, function(State)

Mob = State
local Players = Players
local LocalPlayer = Player
local Mouse = LocalPlayer:GetMouse()
function ClosestMobToCurser()
    local MaxDistance, Closest = math.huge
    for i, v in pairs(Workspace.Live:GetChildren()) do
        if v:IsA("Model")  then
            local H = v:FindFirstChild("Head")
            if H then
                local Pos, Vis = Workspace.CurrentCamera:WorldToScreenPoint(H.Position)
                if Vis then
                    local A1, A2 = Vector2.new(Mouse.X, Mouse.Y), Vector2.new(Pos.X, Pos.Y)
                    local Dist = (A2 - A1).Magnitude
                    if Dist < MaxDistance and Dist <= math.huge then
                        MaxDistance = Dist
                        Closest = v
                    end
                end
            end
        end
    end
    return Closest
end



local OldIndex = nil
OldIndex =
    hookmetamethod(
    game,
    "__index",
    function(self, v, ...)
        if self == Mouse and (v == "Hit" or v == "Target") then
            if ClosestMobToCurser() and Mob then
                return ((v == "Hit" and ((ClosestMobToCurser().Head.CFrame) or (ClosestMobToCurser().Head.CFrame + (ClosestMobToCurser().Head.Velocity)))) or
                    (v == "Target" and ClosestMobToCurser().Head))
            end
        end

        return OldIndex(self, v)
    end
)
end)

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/Karrot-Esp"))()
local Esp = Section1:CreateToggle("Esp", nil, function(State)
ESP:Toggle(State)
ESP.Tracers = State
ESP.Names = State
ESP.Boxes = State
end)
local Toggle1 = Section1:CreateToggle("Anti Leveling", nil, function(State)
yes = State
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(...)
    local Args = {...}
    local Self = Args[1]
    if getnamecallmethod()== "FireServer" and tostring(Self)== "LevelingRemote" and yes then
            return nil
    end
    return OldNameCall(...)
end)
end)
Toggle1:AddToolTip("Makes you not able to level up")
local Toggle1 = Section1:CreateToggle("Auto Mob", nil, function(State)
system2 = State
game:GetService("RunService").Stepped:connect(
    function()
        pcall(
            function()
                if system2 then
                    Player.Character.Humanoid:ChangeState(11)
                end
            end
        )
    end
)
c()
spawn(
    function()
        while system2 do
            wait()
            pcall(
                function()
                    for i, v in pairs(Workspace.Live:GetChildren()) do
                        if
                            v:IsA("Model") and v.Name == system and v:FindFirstChildOfClass("Humanoid") and
                                v.Humanoid.Health > 0
                         then
                            Player.Character.HumanoidRootPart.CFrame =
                                v.Torso.CFrame * CFrame.new(0, -7, 2) 
                            wait(delay2)
                   
                            wait(delay2)
                            if v.Humanoid.Health < v.Humanoid.MaxHealth then
                            v.Humanoid.Health = 0
                            end
                            wait(delay2)
                        end
                    end
                end
            )
        end
    end
)
spawn(
    function()
        while system2 do
            wait()
            pcall(
                function()
                    c()
                    wait(delay2)
                    ReplicatedStorage.RemoteEvents.BladeCombatRemote:FireServer(false, nil, nil)
                    ReplicatedStorage.RemoteEvents.BladeCombatRemote:FireServer(false, nil, nil)
                end
            )
        end
    end
)
   
end)


local Dropdown1 = Section1:CreateDropdown("Mobs", system, function(String)
	system = String
end)

local Toggle1 = Section1:CreateToggle("Auto Quest", nil, function(State)
System = State
game:GetService("RunService").Stepped:connect(
    function()
        pcall(
            function()
                if System then
                    Player.Character:WaitForChild("Humanoid"):ChangeState(11)
                    if Player.Character.Humanoid.Health == 0 then
                        ReplicatedStorage.RemoteEvents.ClearQuestRemote:FireServer()
                        for i, v in pairs(Player.Character:GetChildren()) do
                            if v:IsA("Tool") and v:FindFirstChild("Combat Script") then
                                v.Parent = Player.Backpack
                            end
                        end
                    end
                    for i, v in pairs(Workspace.Live:GetChildren()) do
                        if
                            v:FindFirstChild("Quest") and v.Quest.Value == Quest.QuestName.Text and
                                v:FindFirstChildOfClass("Humanoid") and
                                v:FindFirstChildOfClass("Humanoid").Health ~= 0 
                         then
                            v.Humanoid:ChangeState(11)
                        end
                    end
                end
            end
        )
    end
)

spawn(
    function()
        while System do
            wait()
            pcall(function()
                    local Quest =
                        Player:WaitForChild("PlayerGui"):WaitForChild("Menu"):WaitForChild(
                        "QuestFrame"
                    )
                    if Quest.Visible == false then
                        repeat
                            wait()
                        until Player.Character and
                            Player:WaitForChild("PlayerGui"):WaitForChild("Menu"):WaitForChild(
                                "QuestFrame"
                            ) and
                                Player:WaitForChild("Backpack"):FindFirstChildOfClass("Tool") or
                            Player.Character:FindFirstChildOfClass("Tool")

                        ReplicatedStorage.RemoteEvents.ChangeQuestRemote:FireServer(
                            ReplicatedStorage.Quests:FindFirstChild(Quests)
                        )
                    end
                    for i, v in pairs(Workspace.Live:GetChildren()) do
                        if
                            v:FindFirstChild("Quest") and v.Quest.Value == Quest.QuestName.Text and
                                v:FindFirstChildOfClass("Humanoid") and
                                v:FindFirstChildOfClass("Humanoid").Health ~= 0 
                         then
                            pcall(
                                function()
                                    if Default1 == "Default" then
                                        v:WaitForChild("HumanoidRootPart").CFrame =
                                            Player.Character:WaitForChild("HumanoidRootPart").CFrame *
                                            CFrame.new(0, 0, -2)
                                        Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                            Workspace.QuestMarkers[
                                            Quest:WaitForChild("QuestName").Text
                                        ].CFrame *
                                            CFrame.new(0, -uu, 0) *
                                            CFrame.Angles(aa, 0, 0)
                                        Part.CFrame =
                                            Player.Character:WaitForChild("HumanoidRootPart").CFrame *
                                            CFrame.new(0, -5, 0)
                                    end
                                    if Default1 == "Sky" then
                                        v:WaitForChild("HumanoidRootPart").CFrame =
                                            Player.Character:WaitForChild("HumanoidRootPart").CFrame *
                                            CFrame.new(0, 0, -2)
                                        Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                            Workspace.QuestMarkers[
                                            Quest:WaitForChild("QuestName").Text
                                        ].CFrame *
                                            CFrame.new(0, uu, 0) *
                                            CFrame.Angles(aa, 0, 0)
                                        Part.CFrame =
                                            Player.Character:WaitForChild("HumanoidRootPart").CFrame *
                                            CFrame.new(0, -5, 0)
                                    end
                                    if Default1 == "Fancy" then
                                        Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                            v:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0, -5, 2)
                                        Part.CFrame =
                                            Player.Character:WaitForChild("HumanoidRootPart").CFrame *
                                            CFrame.new(0, -5, 0)
                                    end
                                    if Default1 == "BeHind" then
                                        Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                            v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
                                    end
                                    if Default1 == "Crazy" then
                                        wait(0.1)
                                        Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                            Workspace.QuestMarkers[
                                            Quest:WaitForChild("QuestName").Text
                                        ].CFrame *
                                            CFrame.new(math.random(100), -uu, math.random(100)) *
                                            CFrame.Angles(aa, 0, 0)
                                        Part.CFrame =
                                            Player.Character:WaitForChild("HumanoidRootPart").CFrame *
                                            CFrame.new(0, -5, 0)
                                        v.HumanoidRootPart.CFrame =
                                            Player.Character:WaitForChild("HumanoidRootPart").CFrame *
                                            CFrame.new(0, 0, -3)
                                    end
                                    if Default1 == "Void" then
                                        repeat
                                            wait()

                                            Player.Character:WaitForChild("HumanoidRootPart").CFrame =
                                                v.HumanoidRootPart.CFrame * CFrame.new(0, -7, 0)
                                        until isnetworkowner(v.HumanoidRootPart) or System == false
                                        v.HumanoidRootPart.CFrame =
                                            Workspace.QuestMarkers[
                                            Quest:WaitForChild("QuestName").Text
                                        ].CFrame * CFrame.new(0, 50000, 0)
                                        Part.CFrame =
                                            Player.Character:WaitForChild("HumanoidRootPart").CFrame *
                                            CFrame.new(0, 7, 0)
                                    end
                                    if InstantKill and v.Humanoid.Health < v.Humanoid.MaxHealth then
                                        wait(delay2)
                                        v.Humanoid.Health = 0
                                    end

                                    if not System then
                                        v.HumanoidRootPart.CFrame =
                                            Workspace.QuestMarkers[
                                            Quest:WaitForChild("QuestName").Text
                                        ].CFrame *
                                            CFrame.new(0, 50, 0) *
                                            CFrame.Angles(aa, 0, 0)
                                    end

                                    if not System then
                                        Player.Character.HumanoidRootPart.CFrame =
                                            Workspace.SafeZoneIndicator.CFrame * CFrame.new(0, 5, 0) *
                                            CFrame.Angles(aa, 0, 0)
                                    end
                                end
                            )
                        end
                    end
          end)
        end
    end
)

spawn(
    function()
        while System do
            wait()
            pcall(
                function()
                    if
                        Player:WaitForChild("Backpack"):FindFirstChildOfClass("Tool") or
                            Player.Character:FindFirstChildOfClass("Tool")
                     then
                        c()
                        ReplicatedStorage.RemoteEvents.BladeCombatRemote:FireServer(false, nil, nil)
                    end
                end
            )
        end
    end
)


end)


local Dropdown1 = Section1:CreateDropdown("Quest Modes", {"Default","Fancy","Sky","BeHind","Crazy","Void"}, function(String)
	Default1 = String
end)
Dropdown1:SetOption("Default")


local Dropdown1 = Section1:CreateDropdown("Quests", Quests, function(String)
	Quests = String
end)

local Toggle1 = Section1:CreateToggle("InstantKill", nil, function(State)
InstantKill = State

while InstantKill do
    wait()
    pcall(
        function()
            for i, v in pairs(Workspace.Live:GetChildren()) do
                if v:FindFirstChild("Humanoid") and 
                    v.Humanoid.Health ~= 0 and isnetworkowner(v.HumanoidRootPart) and
                        v.Humanoid.Health < v.Humanoid.MaxHealth
                 then
                    v.Humanoid.Health = 0
                end
            end
        end
    )
end
if InstantKill then
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = "if it dosen't work",
            Text = "Minmize the roblox tab and then reopen it should work again"
        }
    )
end

end)

magss = 100
local Toggle1 = Section1:CreateToggle("Auto Bring Mob", nil, function(State)
sexs = State
while sexs do
    wait(0.5)
    pcall(function()
            for i, v in ipairs(Workspace.Live:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v.Name ~= "Training dummy" and v.Humanoid.Health > 0 then
                    local Root = Player.Character.HumanoidRootPart
                    local RootTwo = v.HumanoidRootPart
                    if (Root.Position - RootTwo.Position).Magnitude < magss then
                        Tween(v.HumanoidRootPart, Player.Character.HumanoidRootPart.CFrame.p, 100)
                        ReplicatedStorage.RemoteEvents.BladeCombatRemote:FireServer(false, nil, nil)
                        ReplicatedStorage.RemoteEvents.BladeCombatRemote:FireServer(false, nil, nil)
                        ReplicatedStorage.RemoteEvents.BladeCombatRemote:FireServer(false, nil, nil)
                    end
                end
            end
        end
    )
end
end)

local Button1 = Section1:CreateButton("Anti Effects", function()
pcall(
    function()
        game.StarterGui:SetCore(
            "SendNotification",
            {
                Title = "Effects Gone",
                Text = "Try one of your gay ugly weak moves unless you use OFA then u cool"
            }
        )
        Workspace.Effects:remove()
    end
)
end)
local Slider2 = Section1:CreateSlider("Attack Distance", 0,300,nil,false, function(Value)
uu = Value
end)
local Slider2 = Section1:CreateSlider("Bring Radius", 0,1000,nil,false, function(Value)
magss = Value
end)

local Slider2 = Section1:CreateSlider("Attack Angle", 0,360,nil,false, function(Value)
aa = Value
end)
local Slider2 = Section1:CreateSlider("AutoFarm Speed", 0,7,nil,false, function(Value)
delay2 = Value
end)
local Button1 = Section1:CreateButton("Redeem Selected Code", function()
ReplicatedStorage.RemoteEvents.CodeRemote:FireServer(code)
end)
local Dropdown1 = Section1:CreateDropdown("Codes", code, function(String)
	code = String
end)

local Button1 = Section1:CreateButton("Redeem All Codes", function()
for i, v in pairs(Player.Codes:GetDescendants()) do
    ReplicatedStorage.RemoteEvents.CodeRemote:FireServer(v.Name)
end
end)
local Toggle1 = Section1:CreateToggle("Stun All Mobs", nil, function(State)
stun = State
while wait(2) do
    pcall(
        function()
            if stun then
                for i, v in pairs(Workspace.Live:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") then
                        v.Humanoid.PlatformStand = true
                    end
                end
            end
        end
    )
end
end)
local Toggle1 = Section1:CreateToggle("Auto Bosses", nil, function(State)
system3 = State
spawn(
    function()
        game:GetService("RunService").Stepped:connect(
            function()
                if system3 then
                    Player.Character.Humanoid:ChangeState(11)
                end
            end
        )

        while system3 do
            wait()
            pcall(
                function()
                    for i, v in pairs(Workspace.Live:GetChildren()) do
                        if
                            v:IsA("Model") and v.Name == "KiddStan" or
                                v.Name == "CrimsonMikami" and v:FindFirstChildOfClass("Humanoid") and
                                    v.Humanoid.Health > 0
                         then
                            Player.Character.HumanoidRootPart.CFrame =
                                v.Torso.CFrame * CFrame.new(0, -5, 2) * CFrame.Angles(aa, 0, 0)
                            wait(delay2)
                            c()
                            ReplicatedStorage.RemoteEvents.BladeCombatRemote:FireServer(
                                false,
                                nil,
                                nil
                            )
                            ReplicatedStorage.RemoteEvents.BladeCombatRemote:FireServer(
                                false,
                                nil,
                                nil
                            )
                            ReplicatedStorage.RemoteEvents.BladeCombatRemote:FireServer(
                                false,
                                nil,
                                nil
                            )
                        end
                    end
                end
            )
        end
    end
)
end)


local Toggle1 = Section1:CreateToggle("Auto use DragonBalls", nil, function(State)
Dragoon = State
local K = Player.PlayerValues
local A = Player
while Dragoon do
    wait()
    pcall(function()
    if K.DragonBall1.Value == false and A.Backpack:FindFirstChild("One Star Dragonball") then
        A.Character.Humanoid:EquipTool(A.Backpack["One Star Dragonball"])
        ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()

    elseif K.DragonBall2.Value == false and A.Backpack:FindFirstChild("Two Star Dragonball") then
        A.Character.Humanoid:EquipTool(A.Backpack["Two Star Dragonball"])
        ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()

    elseif K.DragonBall3.Value == false and A.Backpack:FindFirstChild("Three Star Dragonball")  then
        A.Character.Humanoid:EquipTool(A.Backpack["Three Star Dragonball"])
        ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()

    elseif K.DragonBall4.Value == false and A.Backpack:FindFirstChild("Four Star Dragonball")  then
        A.Character.Humanoid:EquipTool(A.Backpack["Four Star Dragonball"])
        ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()

    elseif K.DragonBall5.Value == false and A.Backpack:FindFirstChild("Five Star Dragonball") then
        A.Character.Humanoid:EquipTool(A.Backpack["Five Star Dragonball"])
        ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()

    elseif K.DragonBall6.Value == false and A.Backpack:FindFirstChild("Six Star Dragonball") then
        A.Character.Humanoid:EquipTool(A.Backpack["Six Star Dragonball"])
        ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()

    elseif K.DragonBall7.Value == false and A.Backpack:FindFirstChild("Seven Star Dragonball") then
        A.Character.Humanoid:EquipTool(A.Backpack["Seven Star Dragonball"])
        ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()
    end
  end)
end
end)


local Button1 = Section2:CreateButton("Find Lucky or Requiem Arrows", function()
LOL = true
ReplicatedStorage.RemoteEvents.ClearInventoryRemote:FireServer()
wait(0.5)
while LOL do
    wait()
    if #Player.Backpack:GetChildren() >= 20 then
        for i, v in pairs(Player.Backpack:GetChildren()) do
            if not table.find(aka, v.Name) and v.Name:find("Arrow") then
                v.Parent = Player.Character
                v:Destroy()
            elseif v.Name:find("Arrow") and table.find(aka, v.Name) then
                game.StarterGui:SetCore(
                    "SendNotification",
                    {
                        Title = "Found One",
                        Text = "Check your inventory plz"
                    }
                )
                LOL = false
            end
        end
    else
        ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Arrow")
    end
end
end)

local Button1 = Section2:CreateButton("Find Uchiha Eyeball", function()
LOL = true
ReplicatedStorage.RemoteEvents.ClearInventoryRemote:FireServer()
wait(0.5)
while LOL do
    wait()
    ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Random Specialization")
    if #Player.Backpack:GetChildren() >= 10 then
        for i, v in pairs(Player.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v:FindFirstChild("Meshes/Sphere_009") and not v:FindFirstChild("Combat Script") then
                v.Parent = Player.Character
                game.StarterGui:SetCore(
                    "SendNotification",
                    {
                        Title = "Found One",
                        Text = "Check your inventory plz"
                    }
                )
                LOL = false
            elseif  v.ClassName == "Tool" and not v:FindFirstChild("Meshes/Sphere_009") and not v:FindFirstChild("Combat Script") then 
                v.Parent = Player.Character
                v:remove()
            end
        end
    end
end
end)

local Button1 = Section2:CreateButton("Find Legendary Armor", function()
LOL = true
ReplicatedStorage.RemoteEvents.ClearInventoryRemote:FireServer()
wait(0.5)
while LOL do
    wait()
    pcall(
        function()
            ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Random Armor")
            if #Player.Backpack:GetChildren() >= 10 then
                for i, v in pairs(Player.Backpack:GetChildren()) do
                    if v.ClassName == "Tool" and v.Name == "Bag" and v:FindFirstChild("Handle") then
                        if v.BagPart.Overhead.Rarity.Text == "Legendary" then
                            v.Parent = Player.Character
                            game.StarterGui:SetCore(
                                "SendNotification",
                                {
                                    Title = "Found One",
                                    Text = "Check your inventory plz"
                                }
                            )
                            LOL = false
                        elseif v.BagPart.Overhead.Rarity.Text == "Common" or v.BagPart.Overhead.Rarity.Text == "Rare" then
                            v.Parent = Player.Character
                            v:remove()
                        end
                    end
                end
            end
        end
    )
end

end)
local Button1 = Section2:CreateButton("Find Rare Armor", function()
LOL = true
ReplicatedStorage.RemoteEvents.ClearInventoryRemote:FireServer()
wait(0.5)
while LOL do
    wait()
    pcall(
        function()
            ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Random Armor")
            if #Player.Backpack:GetChildren() >= 10 then
                for i, v in pairs(Player.Backpack:GetChildren()) do
                    if v.ClassName == "Tool" and v.Name == "Bag" and v:FindFirstChild("Handle") then
                        if v.BagPart.Overhead.Rarity.Text == "Legendary" or v.BagPart.Overhead.Rarity.Text == "Rare" then
                            v.Parent = Player.Character
                            game.StarterGui:SetCore(
                                "SendNotification",
                                {
                                    Title = "Found One",
                                    Text = "Check your inventory plz"
                                }
                            )
                            LOL = false
                        elseif v.BagPart.Overhead.Rarity.Text == "Common" then
                            v.Parent = Player.Character
                            v:remove()
                        end
                    end
                end
            end
        end
    )
end

end)
local Button1 = Section2:CreateButton("Find Rare Accessory", function()
LOL = true
ReplicatedStorage.RemoteEvents.ClearInventoryRemote:FireServer()
wait(0.5)
while LOL do
    wait()
    pcall(
        function()
            ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Random Accessory")
            if #Player.Backpack:GetChildren() >= 10 then
                for i, v in pairs(Player.Backpack:GetChildren()) do
                    if v.ClassName == "Tool" and v.Name == "Bag" and v:FindFirstChild("Handle") then
                        if v.BagPart.Overhead.Rarity.Text == "Legendary" or v.BagPart.Overhead.Rarity.Text == "Rare" then
                            v.Parent = Player.Character
                            game.StarterGui:SetCore(
                                "SendNotification",
                                {
                                    Title = "Found One",
                                    Text = "Check your inventory plz"
                                }
                            )
                            LOL = false
                        elseif
                            v.BagPart.Overhead.Rarity.Text == "Common" or v.BagPart.Overhead.Rarity.Text == "Uncommon"
                         then
                            v.Parent = Player.Character
                            v:remove()
                        end
                    end
                end
            end
        end
    )
end
end)

local Button1 = Section2:CreateButton("Find Uncommon Accessory", function()
LOL = true
ReplicatedStorage.RemoteEvents.ClearInventoryRemote:FireServer()
wait(0.5)
while LOL do
    wait()
    pcall(
        function()
            ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Random Accessory")
            if #Player.Backpack:GetChildren() >= 10 then
                for i, v in pairs(Player.Backpack:GetChildren()) do
                    if v.ClassName == "Tool" and v.Name == "Bag" and v:FindFirstChild("Handle") then
                        if v.BagPart.Overhead.Rarity.Text == "Legendary" or v.BagPart.Overhead.Rarity.Text == "Rare" or v.BagPart.Overhead.Rarity.Text == "Uncommon" then
                            v.Parent = Player.Character
                            game.StarterGui:SetCore(
                                "SendNotification",
                                {
                                    Title = "Found One",
                                    Text = "Check your inventory plz"
                                }
                            )
                            LOL = false
                        elseif
                            v.BagPart.Overhead.Rarity.Text == "Common" 
                         then
                            v.Parent = Player.Character
                            v:remove()
                        end
                    end
                end
            end
        end
    )
end
end)

local Button1 = Section2:CreateButton("Stop Finding", function()
LOL = false
end)
local Toggle1 = Section2:CreateToggle("Find and Store Lucky/Requiem Arrows", nil, function(State)
LL = State

while LL do
    wait()
    if #Player.Backpack:GetChildren() >= 20 then
        for i, v in pairs(Player.Backpack:GetChildren()) do 
            if not table.find(aka, v.Name) and v.Name:find("Arrow") then
                   for a = 1, 13 do
                    for j, v in pairs(Player.PlayerValues:GetChildren()) do
                        if v.Name:match("ItemStorage" .. a) and v.Value ~= "" then
                            break end end end 
                v.Parent = Player.Character
                v:Destroy()
            elseif v.Name:find("Arrow") and table.find(aka, v.Name) then
                game.StarterGui:SetCore(
                    "SendNotification",
                    {
                        Title = "Found One",
                        Text = "Putting in inventory"
                    }
                )
                Player.Character.Humanoid:EquipTool(v)
                for i = 1, 13 do
                    for j, v in pairs(Player.PlayerValues:GetChildren()) do
                        if v.Name:match("ItemStorage" .. i) and v.Value == "" then wait(0.001)
                            ReplicatedStorage.RemoteEvents.ItemStorageRemote:FireServer(v.Name)
                        end
                    end
                end
                wait(3)
            end
        end
    else
        ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Arrow")
    end
end
end)

local Toggle1 = Section2:CreateToggle("Find and Store Requiem Arrows", nil, function(State)
LL = State

while LL do
    wait()
    if #Player.Backpack:GetChildren() >= 20 then
        for i, v in pairs(Player.Backpack:GetChildren()) do 
            if v.Name ~= "Requiem Arrow" and v:FindFirstChild("Blade") then
            
                v.Parent = Player.Character
                v:Destroy()
            elseif  v.Name == "Requiem Arrow" and v:FindFirstChild("Blade") then
                game.StarterGui:SetCore(
                    "SendNotification",
                    {
                        Title = "Found One",
                        Text = "Putting in inventory"
                    }
                )
                Player.Character.Humanoid:EquipTool(v)
                for i = 1, 13 do
                    for j, v in pairs(Player.PlayerValues:GetChildren()) do
                        if v.Name:match("ItemStorage" .. i) and v.Value == "" then wait(0.001)
                            ReplicatedStorage.RemoteEvents.ItemStorageRemote:FireServer(v.Name)
                        end
                    end
                end
                wait(3)
            end
        end
    else
        ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Arrow")
    end
end
end)




local Slider2 = Section2:CreateSlider("Auto Stuff Wait time", 0,7,nil,false, function(Value)
   delay = Value
end)
Slider2:AddToolTip("Control Delay Time For Auto Applying everything below this")
local Toggle1 = Section2:CreateToggle("Auto Buy Arrows", nil, function(State)
deeznuts33 = State
while deeznuts33 do
    wait(0.3)
    ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Arrow")
end
end)
local Toggle1 = Section2:CreateToggle("Auto Ability", nil, function(State)
Abily = State
while Abily do
    wait(2)
    pcall(
        function()
            if Player.PlayerValues.Ability.Value ~= ab1 then
                ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Rokakaka")
                Player.Character.Humanoid:EquipTool(Player.Backpack.Rokakaka)
                ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()
                wait(delay)
                ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Arrow")
                Player.Character.Humanoid:EquipTool(Player.Backpack.Arrow)
                ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()
                wait(delay)
            end
        end
    )
end
end)


local Dropdown1 = Section2:CreateDropdown("Abilitys", ab1, function(String)
	ab1 = String
end)


local Toggle1 = Section2:CreateToggle("Auto Tile", nil, function(State)
newpaper = State
while newpaper do
    wait(delay)
    pcall(
        function()
            if Player.PlayerValues.Epithet.Value ~= ab3 then
                if not Player.Backpack:FindFirstChild("Newspaper") then
                    ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Newspaper")
                end
                Player.Character.Humanoid:EquipTool(Player.Backpack.Newspaper)
                ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()
            end
        end
    )
end
end)



local Dropdown1 = Section2:CreateDropdown("Titles", ab3, function(String)
	ab3 = String
end)

local Toggle1 = Section2:CreateToggle("Auto Race", nil, function(State)
Heart = State
while Heart do
    wait(delay)
    pcall(
        function()
            if Player.PlayerValues.Race.Value ~= ab4 then
                if not Player.Backpack:FindFirstChild("Heart") then
                    ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Heart")
                end
                Player.Character.Humanoid:EquipTool(Player.Backpack.Heart)
                ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()
            end
        end
    )
end
end)


local Dropdown1 = Section2:CreateDropdown("Races", ab4, function(String)
	ab4 = String
end)

local Toggle1 = Section2:CreateToggle("Auto Trait", nil, function(State)
Heart1 = State
while Heart1 do
    wait(delay)
    pcall(
        function()
            if Player.PlayerValues.Trait.Value ~= ab6 then
                if not Player.Backpack:FindFirstChild("Eyeball") then
                    ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Eyeball")
                end
                Player.Character.Humanoid:EquipTool(Player.Backpack.Eyeball)
                ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()
            end
        end
    )
end
end)



local Dropdown1 = Section2:CreateDropdown("Traits", ab6, function(String)
	ab6 = String
end)

local Toggle1 = Section2:CreateToggle("Auto Class", nil, function(State)
Heart2 = State
while Heart2 do
    wait(delay)
    pcall(
        function()
            if Player.PlayerValues.Class.Value ~= ab7 then
                if not Player.Backpack:FindFirstChild("Brain") then
                    ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Brain")
                end

                Player.Character.Humanoid:EquipTool(Player.Backpack.Brain)
                ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()
            end
        end
    )
end
end)


local Dropdown1 = Section2:CreateDropdown("Classes", ab7, function(String)
	ab7 = String
end)

local Toggle1 = Section2:CreateToggle("Auto Sharingan", nil, function(State)
Heart9 = State
while Heart9 do
    wait(delay)
    if Player.PlayerValues.Specialization.Value ~= ab10 then
        ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Random Specialization")
        for i, v in pairs(Player.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v:FindFirstChild("Meshes/Sphere_009") then
                v.Parent = Player.Character
                wait(1)
                ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()
            else
                v.Parent = Player, Character
                v:remove()
            end
        end
    end
end
end)

local Dropdown1 = Section2:CreateDropdown("Sharingans", ab10, function(String)
	ab10 = String
end)

local Toggle1 = Section2:CreateToggle("Auto Specialization", nil, function(State)
Heart3 = State
while Heart3 do
    wait(delay)
    pcall(
        function()
            if Player.PlayerValues.Specialization.Value ~= ab2 then
                ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Random Specialization")
                for i, v in pairs(Player.Backpack:GetChildren()) do
                    if v.ClassName == "Tool" and v:FindFirstChild("Scroll") or v:FindFirstChild("Fruit") then
                        v.Parent = Player.Character
                    end
                end
                ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()
            end
        end
    )
end
end)


local Dropdown1 = Section2:CreateDropdown("Specializations", ab2, function(String)
	ab2 = String
end)

local Toggle1 = Section2:CreateToggle("Auto Mentor", nil, function(State)
Heart4 = State
while Heart4 do
    wait(delay)
    pcall(
        function()
            if Player.PlayerValues.Mentor.Value ~= ab5 then
                ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Random Mentor")
                for i, v in pairs(Player.Backpack:GetChildren()) do
                    if v.ClassName == "Tool" and v:FindFirstChild("MentorEgg") then
                        v.Parent = Player.Character
                    end
                end
                ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()
            end
        end
    )
end
end)


local Dropdown1 = Section2:CreateDropdown("Mentor", ab5, function(String)
	ab5 = String
end)

local Toggle1 = Section2:CreateToggle("Select Accessory1", nil, function(State)
Accessory1 = State
while Accessory1 do
    wait()
    ReplicatedStorage.RemoteEvents.EquipAccessoryRemote:FireServer("Accessory1")
end
end)
local Toggle1 = Section2:CreateToggle("Select Accessory2", nil, function(State)
Accessory2 = State
while Accessory2 do
    wait()
    ReplicatedStorage.RemoteEvents.EquipAccessoryRemote:FireServer("Accessory2")
end
end)
local Toggle1 = Section2:CreateToggle("Auto Accessory", nil, function(State)
Heart2 = State
while Heart2 do
    wait(delay)
    pcall(
        function()
            if
                Player.PlayerValues.Accessory1.Value and
                    Player.PlayerValues.Accessory2.Value ~= ab8
             then
                ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Random Accessory")
                for i, v in pairs(Player.Backpack:GetChildren()) do
                    if v.ClassName == "Tool" and v:FindFirstChild("BagPart") then
                        v.Parent = Player.Character
                    end
                end
                ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()
            end
        end
    )
end
end)


local Dropdown1 = Section2:CreateDropdown("Accessorys", ab8, function(String)
	ab8 = String
end)



local Toggle1 = Section2:CreateToggle("Auto Armor", nil, function(State)
Heart5 = State

while Heart5 do
    wait(delay)
    pcall(
        function()
            if Player.PlayerValues.Armor.Value ~= ab9 then
                ReplicatedStorage.RemoteEvents.BuyItemRemote:FireServer("Random Armor")
                for i, v in pairs(Player.Backpack:GetChildren()) do
                    if v.ClassName == "Tool" and v:FindFirstChild("Handle") then
                        v.Parent = Player.Character
                    end
                end
                ReplicatedStorage.RemoteEvents.ItemRemote:FireServer()
            end
        end
    )
end
end)

local Dropdown1 = Section2:CreateDropdown("Accessorys", ab9, function(String)
	ab9 = String
end)
local Toggle1 = Section2:CreateToggle("AutoKeyPress E", nil, function(State)
E = State
while E do 
    wait()
game:GetService('VirtualInputManager'):SendKeyEvent(true,"E",false,uwu)
end 
end)

local Toggle1 = Section2:CreateToggle("AutoKeyPress R", nil, function(State)
R = State
while R do 
    wait()
game:GetService('VirtualInputManager'):SendKeyEvent(true,"R",false,uwu)
end 
end)

local Toggle1 = Section2:CreateToggle("AutoKeyPress X", nil, function(State)
X = State
while X do 
    wait()
game:GetService('VirtualInputManager'):SendKeyEvent(true,"X",false,uwu)
end 
end)

local Toggle1 = Section2:CreateToggle("AutoKeyPress C", nil, function(State)
C = State
while C do 
    wait()
game:GetService('VirtualInputManager'):SendKeyEvent(true,"C",false,uwu)
end 
end)

local Toggle1 = Section2:CreateToggle("AutoKeyPress Y", nil, function(State)
Y = State
while Y do 
    wait()
game:GetService('VirtualInputManager'):SendKeyEvent(true,"Y",false,uwu)
end 
end)

local Toggle1 = Section2:CreateToggle("AutoKeyPress V", nil, function(State)
V = State
while V do 
    wait()
game:GetService('VirtualInputManager'):SendKeyEvent(true,"V",false,uwu)
end 
end)

local Toggle1 = Section2:CreateToggle("AutoKeyPress T", nil, function(State)
T = State
while T do 
    wait()
game:GetService('VirtualInputManager'):SendKeyEvent(true,"T",false,uwu)
end 
end)
if syn then
local TextBox1 = SectionA:CreateTextBox("Fps Cap", "Only numbers", true, function(Value)
    Fps = Value
    pcall(function()
setfpscap(Fps)
end)
end)
end
local TextBox1 = SectionA:CreateTextBox("WalkSpeed", "Only numbers", true, function(Value)
    Player.Character.Humanoid.WalkSpeed = Value
end)
local TextBox1 = SectionA:CreateTextBox("JumpPower", "Only numbers", true, function(Value)
    Player.Character.Humanoid.JumpPower = Value
end)



local Toggle1 = SectionA:CreateToggle("Infinite Jump", nil, function(State)
Infinite = State
game:GetService("UserInputService").JumpRequest:connect(function()
	if Infinite then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end) end)

local words = {"V.G Hub Best","Autofarming with V.G hub makes this game ten times easier","DekuDimz is so cool fast updates ez",'V.G Hub has the only working godmode','im pround to be using V.G Hub OwO','why are you just standing around get yourself V.G hub its free dude','Honestly if your not using godmode your a dork','Random messging is funny','i have auto chat enabled LOL',
'V.G Hub Winning','V.G Hub on Top'
}
local Toggle1 = SectionA:CreateToggle("Spam Chat", nil, function(State)
words1 = State
while words1 do wait(5)
ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(words[math.random(#words)],"All")
end end)
local Toggle1 = SectionA:CreateToggle("Be Wired", nil, function(State)
sy = State
spawn(function()
while sy do wait()
pcall(function()
Player.Character["Left Leg"]:remove()
Player.Character["Left Arm"]:remove()
Player.Character["Right Arm"]:remove()
Player.Character["Right Leg"]:remove() end) end end) end)

local Toggle1 = SectionA:CreateToggle("SS Jump Mobs", nil, function(State)
deeznuts = State
while deeznuts do
    wait(1)
    for i, v in pairs(Workspace.Live:GetDescendants()) do
        if v:IsA("Humanoid") then
            v.Jump = true
        end
    end
end
end)
local Toggle1 = SectionA:CreateToggle("SS Sit Mobs", nil, function(State)
deeznuts1 = State
while deeznuts1 do
    wait(1)
    for i, v in pairs(Workspace.Live:GetDescendants()) do
        if v:IsA("Humanoid") then
            v.Sit = true
        end
    end
end
end)
local Toggle1 = SectionA:CreateToggle("G Noclip", nil, function(State)
sex = State
noclip = false
game:GetService("RunService").Stepped:connect(
    function()
        if noclip then
            Player.Character.Humanoid:ChangeState(11)
        end
    end
)
mouse = Player:GetMouse()
Player:GetMouse().KeyDown:connect(
    function(v)
        if v == "g" then
            if sex then
                noclip = not noclip
                Player.Character.Humanoid:ChangeState(11)
            end
        end
    end
)
end)
local Toggle1 = SectionA:CreateToggle("B Fly", nil, function(State)
sex2 = State
local Max = 0
local Players = Players
local LP = Player
local Mouse = LP:GetMouse()
Mouse.KeyDown:connect(
    function(k)
        if k:lower() == "b" then
            Max = Max + 1
            Fly = false
            if sex2 then
                local T = LP.Character.Torso
                local S = {
                    F = 0,
                    B = 0,
                    L = 0,
                    R = 0
                }
                local S2 = {
                    F = 0,
                    B = 0,
                    L = 0,
                    R = 0
                }
                local SPEED = 5
                local function FLY()
                    Fly = true
                    local BodyGyro = Instance.new("BodyGyro", T)
                    local BodyVelocity = Instance.new("BodyVelocity", T)
                    BodyGyro.P = 9e4
                    BodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                    BodyGyro.cframe = T.CFrame
                    BodyVelocity.velocity = Vector3.new(0, 0.1, 0)
                    BodyVelocity.maxForce = Vector3.new(9e9, 9e9, 9e9)
                    spawn(
                        function()
                            repeat
                                wait()
                                LP.Character.Humanoid.PlatformStand = false
                                if S.L + S.R ~= 0 or S.F + S.B ~= 0 then
                                    SPEED = 200
                                elseif not (S.L + S.R ~= 0 or S.F + S.B ~= 0) and SPEED ~= 0 then
                                    SPEED = 0
                                end
                                if (S.L + S.R) ~= 0 or (S.F + S.B) ~= 0 then
                                    BodyVelocity.velocity =
                                        ((Workspace.CurrentCamera.CoordinateFrame.lookVector * (S.F + S.B)) +
                                        ((Workspace.CurrentCamera.CoordinateFrame *
                                            CFrame.new(S.L + S.R, (S.F + S.B) * 0.2, 0).p) -
                                            Workspace.CurrentCamera.CoordinateFrame.p)) *
                                        SPEED
                                    S2 = {
                                        F = S.F,
                                        B = S.B,
                                        L = S.L,
                                        R = S.R
                                    }
                                elseif (S.L + S.R) == 0 and (S.F + S.B) == 0 and SPEED ~= 0 then
                                    BodyVelocity.velocity =
                                        ((Workspace.CurrentCamera.CoordinateFrame.lookVector * (S2.F + S2.B)) +
                                        ((Workspace.CurrentCamera.CoordinateFrame *
                                            CFrame.new(S2.L + S2.R, (S2.F + S2.B) * 0.2, 0).p) -
                                            Workspace.CurrentCamera.CoordinateFrame.p)) *
                                        SPEED
                                else
                                    BodyVelocity.velocity = Vector3.new(0, 0.1, 0)
                                end
                                BodyGyro.cframe = Workspace.CurrentCamera.CoordinateFrame
                            until not Fly
                            S = {
                                F = 0,
                                B = 0,
                                L = 0,
                                R = 0
                            }
                            S2 = {
                                F = 0,
                                B = 0,
                                L = 0,
                                R = 0
                            }
                            SPEED = 0
                            BodyGyro:destroy()
                            BodyVelocity:destroy()
                            LP.Character.Humanoid.PlatformStand = false
                        end
                    )
                end
                Mouse.KeyDown:connect(
                    function(k)
                        if k:lower() == "w" then
                            S.F = 1
                        elseif k:lower() == "s" then
                            S.B = -1
                        elseif k:lower() == "a" then
                            S.L = -1
                        elseif k:lower() == "d" then
                            S.R = 1
                        end
                    end
                )
                Mouse.KeyUp:connect(
                    function(k)
                        if k:lower() == "w" then
                            S.F = 0
                        elseif k:lower() == "s" then
                            S.B = 0
                        elseif k:lower() == "a" then
                            S.L = 0
                        elseif k:lower() == "d" then
                            S.R = 0
                        end
                    end
                )
                FLY()
                if Max == 2 then
                    Fly = false
                    Max = 0
                end
            end
        end
    end
)
end)
local Button1 = SectionA:CreateButton("Anti Lag", function()
for _, v in pairs(Workspace:GetDescendants()) do
    if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
        v.Material = Enum.Material.SmoothPlastic
        if v:IsA("Texture") then
            v:Destroy()
        end
    end
end
end)

local Button1 = SectionA:CreateButton("Teleport to RandomPlayer", function()
local randomPlayer = Players:GetPlayers()[math.random(1, #Players:GetPlayers())]

Player.Character.HumanoidRootPart.CFrame =
    CFrame.new(
    Vector3.new(
        randomPlayer.Character.Head.Position.X,
        randomPlayer.Character.Head.Position.Y,
        randomPlayer.Character.Head.Position.Z
    )
)
end)
local Button1 = SectionA:CreateButton("Lag Switch F3", function()
local ass = false
local bitch = settings()

game:service "UserInputService".InputEnded:connect(
    function(i)
        if i.KeyCode == Enum.KeyCode.F3 then
            ass = not ass
            bitch.Network.IncomingReplicationLag = ass and 10 or 0
        end
    end
)
 end) 
local Button1 = SectionA:CreateButton("ServerHop", function()
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, Player)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

-- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
Teleport() 
end)
local Button1 = SectionA:CreateButton("Rejoin", function()
game:GetService("TeleportService"):Teleport(game.PlaceId, Player) end)


local Toggle3 = Section3:CreateToggle("UI Toggle", nil, function(State)
	Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
	Config.Keybind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)
Section3:CreateLabel("Credits xLazy#8603")
local Colorpicker3 = Section3:CreateColorpicker("UI Color", function(Color)
	Window:ChangeColor(Color)
end)
Colorpicker3:UpdateColor(Config.Color)

-- credits to jan for patterns
local Dropdown3 = Section4:CreateDropdown("Image", {"Default","Hearts","Abstract","Hexagon","Circles","Lace With Flowers","Floral"}, function(Name)
	if Name == "Default" then
		Window:SetBackground("2151741365")
	elseif Name == "Hearts" then
		Window:SetBackground("6073763717")
	elseif Name == "Abstract" then
		Window:SetBackground("6073743871")
	elseif Name == "Hexagon" then
		Window:SetBackground("6073628839")
	elseif Name == "Circles" then
		Window:SetBackground("6071579801")
	elseif Name == "Lace With Flowers" then
		Window:SetBackground("6071575925")
	elseif Name == "Floral" then
		Window:SetBackground("5553946656")
	end
end)
Dropdown3:SetOption("Default")

local Colorpicker4 = Section4:CreateColorpicker("Color", function(Color)
	Window:SetBackgroundColor(Color)
end)
Colorpicker4:UpdateColor(Color3.new(1,1,1))

local Slider3 = Section4:CreateSlider("Transparency",0,1,nil,false, function(Value)
	Window:SetBackgroundTransparency(Value)
end)
Slider3:SetValue(0)

local Slider4 = Section4:CreateSlider("Tile Scale",0,1,nil,false, function(Value)
	Window:SetTileScale(Value)
end)
Slider4:SetValue(0.5)
