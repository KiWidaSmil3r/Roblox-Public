startTick = tick()
wl = true
constants = string.split("https://pastebin.com/raw/c2Vu80fC|Team_Data|Melee_Handler|https://pastebin.com/raw/4JuheYmH|Fire_Bullet|function|Airdrop_Watch|table|Tactical Rifle|Medium Ammo|Assault|weaponData|FireRate|GetState", "|")

--// Vars
if not game:IsLoaded() then
    game.Loaded:Wait()
end
getgenv().visiblePlayers = {}
getgenv().chamsConnections = {}
getgenv().wepMods = false
local Options = getgenv().Options
saKey = Options["silentAimToggleKey"] or Enum.KeyCode.X
Ydown = Options["Ydown"] or 73
if Ydown == 37 then Ydown = 73 end
Fov = Options["Fov"] or 100
EspTransparency = Options["EspTransparency"] or 0.7
chams = Options["chams"] or false
chamsConnections = getgenv().chamsConnections
silentAim = Options["silentAim"] or false
aimlock = Options["aimlock"] or false
antiAim = Options["antiAim"] or false
pickaxeAura = Options["pickaxeAura"] or false
tpExploit = Options["tpExploit"] or false
jumpEnabled = Options["jumpEnabled"] or false
jump = Options["jump"] or 58
walkEnabled = Options["walkEnabled"] or false
walk = Options["walk"] or 25
tpPlayer = Options["tpPlayer"] or ""
nameEnabled = Options["nameEnabled"] or false
targetPart = Options["targetPart"] or "Head"
hitChance = Options["hitChance"] or 100
smoothness = Options["smoothness"] or 1
espBoxes = Options["boxEsp"] or true
visibleCheck = Options["visibleCheck"] or false
aimlockKeybind = Options["aimlockKeybind"] or "MouseButton2"
autopot = Options["autopot"] or false
autochat = Options["autochat"] or false
autowall = Options["autowall"] or false
Hchance = Options["headHitChance"] or 0
Uchance = Options["uppertorsoHitChance"] or 0
Lchance = Options["lowertorsoHitChance"] or 0
noFall = Options["nofall"] or false
espTracers = Options["espTracers"] or false
espNames = Options["espNames"] or true
espLock = Options["espLock"] or false

if Options["mkeybind"] then
    mkeybind = Enum.KeyCode[Options["mkeybind"]]
else
    mkeybind = Enum.KeyCode.RightShift
end
local noclipLoop
--//
print("Loading kiwi's (not so) legit cheat...")

getgenv().targetPlayer = nil

local espLib = loadstring(game:HttpGet("https://pastebin.com/raw/bhmauHcN"))()
local players = game:GetService("Players")
local runService = game:GetService("RunService")
local localPlayer = players.LocalPlayer
local tracking = {}
local teamCheck = false
local UserInputService = game:GetService("UserInputService")
local MB = UserInputService:GetMouseButtonsPressed()
local remove = table.remove
local fromRGB = Color3.fromRGB
local espColor = fromRGB(139, 26, 176)
local teamEspColor = fromRGB(61, 176, 26)
local gunName = nil
local hooktoggle = false
local gunName
local localPlayer = game:GetService("Players").LocalPlayer
local currentCamera = workspace.CurrentCamera
local mouse = localPlayer:GetMouse()
local RunService = game:GetService("RunService")
local runService = game:GetService("RunService")
local team = {}
local random = Random.new()
local acCheck1 
local headSize = 10
local headTrans = 0.8
local headColor = fromRGB(139, 26, 176)
local silentAimToggle = false
local circlevis = false
local circle = Drawing.new("Circle")
randomNum = random:NextInteger(1, 100)
randomNum2 = random:NextInteger(1, 100)
local function isInTable(table, value)
    for i, v in pairs(table) do
        if v == value then
            return true
        end
    end
    return false
end

print("bypassing ac...")
local acTick = tick()
for i, v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
    acCheck1 = true
    v:Disable()
end
if not acCheck1 or not constants then
    localPlayer:Kick("script failed to load properly")
    wait(9e9)
end
local functions = {}
for k, b in pairs(getgc()) do
    if type(b) == constants[6] and getfenv(b).script ~= nil then
        table.insert(functions, b)
    end
end
for i, v in pairs(getconnections(game:GetService("LogService").MessageOut)) do
    if isInTable(functions, v.Function) then
        v:Disable()
    end
end
local MemCache = game:GetService("Stats"):GetTotalMemoryUsageMb();
function GenerateFakeMemory()
    local random = math.random(1, 2);
    local method = (random == 1 and "-") or "+";
    return (method == "-" and (MemCache - (random / math.random(100, 200)))) or (MemCache + (random / math.random(100, 200)));
end
if KRNL_LOADED then
    print("Krnl version is messed up, but it's not my fault")
end
print("loading gui elements...")
local guiTick = tick()
-- // Gui
local circle1 = Drawing.new("Circle")
circle1.Visible = true
circle1.Filled = true
circle1.NumSides = 1000
circle1.Radius = 0 
circle1.Transparency = 0.5
circle1.Color = Color3.fromRGB(61, 176, 26)
circle1.Position = Vector2.new(currentCamera.ViewportSize.X / 2, currentCamera.ViewportSize.Y / 2)
local ran = 3
local going = true
connection = runService.RenderStepped:Connect(function()
    if circle1 and going then
    ran = ran + 1
    local radCalc = 1 / ran
    radCalc = radCalc * 150
    circle1.Radius = circle1.Radius + radCalc 
    if ran >= 60 then
        if circle1.Transparency > 0 then
            circle1.Transparency = circle1.Transparency - 0.01
            else
                going = false
                circle1:Remove()
                if connection then
                connection:Disconnect()
                end
        end
    end

    end
end)
if _G.hereiambabyhehe ~= true then
    _G.hereiambabyhehe = true
    elseif _G.hereiambabyhehe == true then
    local removethat = game.CoreGui:FindFirstChild("FluxLib")
    removethat:Destroy()
    removethat:Remove()
end
local library = loadstring(game:HttpGet"https://pastebin.com/raw/BTHNjw5g")()
local win = library:Window("Kiwi Vision", "Island Royale", fromRGB(139, 26, 176))
local Section1 = win:Tab("Aim", "http://www.roblox.com/asset/?id=6023426915")
local Section2 = win:Tab("Visual", "http://www.roblox.com/asset/?id=6023426915")
local Section3 = win:Tab("Player", "http://www.roblox.com/asset/?id=6023426915")
local Section5 = win:Tab("Skin Changer", "http://www.roblox.com/asset/?id=6023426915")
local Section4 = win:Tab("Config", "http://www.roblox.com/asset/?id=6023426915")

local wearFolder = game:GetService("ReplicatedStorage").Player_Data[localPlayer.Name]
local clothingFolder = game:GetService("ReplicatedStorage").Character_Clothing
local activeItem = function(category)
    local tempcTable = {}
    for i,v in pairs(clothingFolder[category]:GetChildren()) do
        table.insert(tempcTable, v.Name)
    end
    return tempcTable
end
UserInputService.InputBegan:connect(function(input, Processed)
	if not Processed then
		if input.KeyCode == mkeybind then
            _G.toggleUiHere()
		end
	end
end)
_G.PresetColor = fromRGB(139, 26, 176)
Section1:Toggle(
    "Silent Aim",
    "Aimbot that doesn't move your crosshair",
    silentAim,
    function(bool)
        silentAim = bool
    end
)
Section1:Toggle(
    "Enable Silent Aim Key Toggle",
    "Enables the silent aim toggle key to function",
    silentAimToggle,
    function(bool)
        silentAimToggle = bool
    end
)

Section1:Toggle(
    "Aimlock",
    "Locks your crosshair on enemy players",
    aimlock,
    function(bool)
        aimlock = bool
    end
)

Section3:Toggle(
    "Anti-Aim",
    "Makes you a harder target to hit",
    antiAim,
    function(bool)
        antiAim = bool
    end
)
Section3:Toggle(
    "Melee Aura",
    "Kill people near you automatically if you have your melee out",
    pickaxeAura,
    function(bool)
        pickaxeAura = bool
    end
)
Section3:Toggle(
    "Bouncepad/Flintlock TP",
    "Will teleport you to an enemy player when you bounce on a bouncepad or fire the flintlock",
    tpExploit,
    function(bool)
        tpExploit = bool
    end
)
Section1:Toggle(
    "Visibility Check",
    "Aimbot will only lock on to visible players (BUGGY!)",
    visibleCheck,
    function(bool)
        visibleCheck = bool
    end
)
Section1:Toggle(
    "Autowall",
    "Automatically fires gun when enemy player is in view. REQURES VISIBILITY CHECK TOGGLED ON TO WORK PROPERLY.",
    autowall,
    function(bool)
        autowall = bool
    end
)
Section1:Slider(
    "Smoothness",
    "Adjusts how fast your crosshair moves to lock on to people when aimbot is enabled",
    1,25,smoothness,
    function(slidervalue)
        smoothness = slidervalue
    end
)
Section1:Slider(
    "Field of View",
    "Adjusts the field of view of aimbot and silent aimbot",
    0,1000,Fov,
    function(slidervalue)
        Fov = slidervalue
    end
)
Section1:Slider(
    "Hit Chance",
    "Adjusts how often you want to hit your target (by percent)",
    0,100,hitChance,
    function(slidervalue)
        hitChance = slidervalue
    end
)
Section1:Dropdown(
    "Target Bone",
    {"Head", "UpperTorso", "LowerTorso"},
    function(dropdownvalue)
        targetPart = dropdownvalue
    end
)

Section1:Label("Bone Hit Chances (%)")
Section1:Slider(
    "Head",
    "Adjusts how often you want to hit the head (by percent)",
    0,100,Hchance,
    function(slidervalue)
        Hchance = slidervalue
    end
)
Section1:Slider(
    "Upper Torso",
    "Adjusts how often you want to hit the Upper Torso (by percent)",
    0,100,Uchance,
    function(slidervalue)
        Uchance = slidervalue
    end
)
Section1:Slider(
    "Lower Torso",
    "Adjusts how often you want to hit the Lower Torso (by percent)",
    0,100,Lchance,
    function(slidervalue)
        Lchance = slidervalue
    end
)
Section1:Line()

Section1:Button(
    "Set Keybind",
    "Set aimbot keybind",
    function()
        local function Input(input, gameProcessedEvent)
            local value = input.KeyCode
            if value ~= Enum.KeyCode.Unknown then
                aimlockKeybind = value
                connection:Disconnect()
            end
        end

        connection = UserInputService.InputBegan:Connect(Input)
    end
)

Section1:Slider(
    "Hitbox Size",
    "Adjusts the size of enemy players' hitboxes",
    0,50,20,
    function(slidervalue)
        headSize = slidervalue
    end
)
Section1:Slider(
    "Hitbox Transparency",
    "Adjusts the transparency of enemy players' hitboxes",
    0,100,80,
    function(slidervalue)
        headTrans = slidervalue/100
    end
)
Section1:Colorpicker(
    "Hitbox Color",
    Color3.fromRGB(139, 26, 176),
    function(color)
        headColor = color
    end
)
local hitboxRunning = false
Section1:Button(
    "Set Hitbox Extender",
    "Enables the hitbox expander (do this after adjusting the settings to your liking)",
    function()
        if not hitboxRunning then
            hitboxRunning = true
        game:GetService("Players").playerAdded:Connect(function(player)
            player.CharacterAdded:Connect(function(character)
                if not isInTable(team, player.Name) then
                local head = character:WaitForChild("HumanoidRootPart")
                if head then
                    head.Size = Vector3.new(headSize,headSize,headSize)
                    head.Transparency = headTrans
                    head.CanCollide = false
                    head.Material = "Neon"
                    wait()
                    head.Color = headColor
                end
            end
            end)
        end)
        for i,player in pairs(game:GetService("Players"):GetPlayers()) do
            if player ~= localPlayer and not isInTable(team, player.Name) then
                player.CharacterAdded:Connect(function(character)
                    if not isInTable(team, player.Name) then
                    local head = character:WaitForChild("HumanoidRootPart")
                    if head then
                        head.Size = Vector3.new(headSize,headSize,headSize)
                        head.Transparency = headTrans
                        head.CanCollide = false
                        head.Material = "Neon"
                        wait()
                        head.Color = headColor
                    end
                end
                end)
                if player.Character then
                    if not isInTable(team, player.Name) then
                    local head = player.Character:FindFirstChild("HumanoidRootPart")
                    if head then
                        head.Size = Vector3.new(headSize,headSize,headSize)
                        head.Transparency = headTrans
                        head.CanCollide = false
                        head.Material = "Neon"
                        wait()
                        head.Color = headColor
                    end
                end
                end
            end
        end
    end
end
)


Section2:Toggle(
    "Box ESP",
    "Enables and disables box esp",
    espBoxes,
    function(bool)
        espBoxes = bool
        espLib.Boxes = bool
    end
)
Section2:Toggle(
    "Tracers",
    "Enables and disables tracers",
    espTracers,
    function(bool)
        espTracers = bool
        espLib.Tracers = bool 
    end
)
Section2:Toggle(
    "Names",
    "Enables and disables names",
    espNames,
    function(bool)
        espNames = bool
        espLib.Names = bool 
    end
)
Section2:Toggle(
    "Lock to Camera",
    "Locks the esp to the camera",
    espLock,
    function(bool)
        espLock = bool
        espLib.FaceCamera = bool
    end
)

Section2:Colorpicker("ESP Color", fromRGB(139, 26, 176), function(pickedcolor)
    espLib.Color = pickedcolor
end)

Section2:Toggle(
    "Draw FOV",
    "Sets whether the fov circle is visible or not",
    false,
    function(bool)
        circlevis = bool
        circle.Visible = bool
    end
)

Section3:Toggle(
    "Walk Speed Enabled",
    "Sets your walkspeed to slider value",
    walkEnabled,
    function(bool)
        walkEnabled = bool
    end
)
Section3:Slider(
    "Walk Speed",
    "Adjusts walkspeed value",
    25,300,walk,
    function(slidervalue)
        walk = slidervalue
    end
)
Section3:Toggle(
    "Jump Power Enabled",
    "Sets your jump power to slider value",
    jumpEnabled,
    function(bool)
        jumpEnabled = bool
    end
)
Section3:Slider(
    "Jump Power",
    "Sets your jump power to slider value",
    58,100,jump,
    function(slidervalue)
        jump = slidervalue
    end
)
Section3:Toggle(
    "No Fall",
    "Toggles whether or not you take fall damage (does not work in BR for now :/ )",
    noFall,
    function(bool)
        noFall = bool
        if noFall then
            while wait() do
            if not nofall then break end
            pcall(function()
            game.ReplicatedStorage.Remote_Events.Falling_State:FireServer(1)
            end)
            end

        end
    end
)
--// Incase nofall isn't enabled manually, it will still be triggered
if noFall then
    while wait() do
    if not nofall then break end
    pcall(function()
    game.ReplicatedStorage.Remote_Events.Falling_State:FireServer(1)
    end)
    end

end
Section3:Toggle(
    "Autopot",
    "Automatically instantly uses healing items",
    autopot,
    function(bool)
        autopot = bool
    end
)
Section3:Toggle(
    "Enable Noclip Hold Toggle",
    "Enables the noclip key to function",
    false,
    function(bool)
        noclipLoop = bool
    end
)

Section3:Toggle(
    "Airjump",
    "Jump midair",
    false,
    function(bool)
        if bool then
            local function Action(Object, Function) if Object ~= nil then Function(Object); end end
            UISconnection = UserInputService.InputBegan:Connect(function(UserInput)
                if bool then
                if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
                    if localPlayer.Character then
                    Action(localPlayer.Character.Humanoid, function(self)
                        if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                            Action(self.Parent.HumanoidRootPart, function(self)
                                self.Velocity = Vector3.new(self.Velocity.X, jump, self.Velocity.Z);
                            end)
                        end
                    end)
                end
                end
            end
            end)
        else
            UISconnection:Disconnect()
        end
    end
)
local messageTable = {
    "Kiwi Vision on top",
    "This was supposed to be a ghost client - Kiwi",
    "Kiwi Vision is on sale now!",
    "kiwiscripts.xyz",
    ".gg/tyV8zVNeqN",
    "How are you running around like a headless chicken - Jurrd",
    "Ladies, one at a time! - Kiwi (this definitely happened)",
    "No, I'm not making an autobuild bot - Kiwi",
    "Synapse > Script-Ware",
    "If any mod sees this, I'm not exploiting",
    "It's Mark! Quick! Pretend to be legit!",
    "Die - Kiwi",
    "Sucks that you don't have Kiwi Vision",
    "HAHA, Kiwi Vision go BRRRRRRRRRRR - Kiwi",
    "Wake up Wake up Wake up Wake up Wake up",
}
Section3:Toggle(
    "Autochat",
    "Spout lines in chat all day!",
    autochat,
    function(bool)
        autochat = bool
        local Target = game:GetService("ReplicatedStorage")["Remote_Events"]["Request_Chat"];

coroutine.wrap(function()
while wait(3) do
    if not autochat then break end
    local indexx = random:NextInteger(1, #messageTable)
    Target:FireServer(messageTable[indexx])
    
end
end)()
    end
)
coroutine.wrap(function()
    while wait(3) do
        if not autochat then break end
        local indexx = random:NextInteger(1, #messageTable)
        Target:FireServer(messageTable[indexx])
        
    end
    end)()
Section4:Button(
    "Set Keybind Config",
    "Saves your Island Royale keybinds to be reloaded on another account. Use this so you don't have to keep changing your binds and settings on alternate accounts",
    function() 
    local repStore = game:GetService("ReplicatedStorage").Player_Data[localPlayer.Name]
    local kbTable = {}
    for i,v in pairs(repStore:GetChildren()) do
    if string.find(v.Name, "_KB") then
        kbTable[v.Name] = v.Value
    end
end
writefile("KB.txt",game:GetService("HttpService"):JSONEncode(kbTable))

end)
Section4:Button(
    "Load Keybind Config",
    "Sets account kebinds to saved keybinds",
    function()
        if isfile("KB.txt") then
        local encoded = readfile("KB.txt")
        local decoded = game:GetService('HttpService'):JSONDecode(encoded)
        local repStore = game:GetService("ReplicatedStorage").Player_Data[localPlayer.Name]
        for i,v in pairs(repStore:GetChildren()) do
            if decoded[v.Name] then
                v.Value = decoded[v.Name]
            end
        end
    end
end)
print("setting up functions...")
local funcTick = tick()
-- // Team List
coroutine.wrap(
    function()
        while true do
            local teamStorage = game:GetService("ReplicatedStorage"):FindFirstChild(constants[2])
            if teamStorage then
                team = {}
                for i, teamFolder in pairs(teamStorage:GetChildren()) do
                    for p, playerValue in pairs(teamFolder:GetChildren()) do
                        if tostring(playerValue.Name) == tostring(localPlayer.Name) then
                            for o, teamValue in pairs(teamFolder:GetChildren()) do
                                table.insert(team, tostring(teamValue.Name))
                            end
                        end
                    end
                end
            end
            wait(3)
        end
    end
)()

wait(0.1)
coroutine.wrap(
    function()
        while wait(0.5) do
            
            if pickaxeAura then
                for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                    if
                        v ~= localPlayer  and localPlayer.Character and
                            localPlayer.Character:FindFirstChildOfClass("Tool") and
                            localPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild(constants[3]) and 
                            localPlayer.Character:FindFirstChild("HumanoidRootPart") and
                            v.Character and
                            v.Character:FindFirstChild("HumanoidRootPart") and
                            v.Character:FindFirstChild("Head")
                     then
                        if team == nil or #team == 0 or isInTable(team, v.Name) == false then
                        if
                            (localPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude <=
                                16
                         then
                            local pos = currentCamera:WorldToScreenPoint(v.Character.Head.Position)
                            local screenRay = currentCamera:ScreenPointToRay(pos.X, pos.Y, 0.1)
                            local playerRay = Ray.new(screenRay.Origin, screenRay.Direction * 16)

                            game:GetService("ReplicatedStorage").Remote_Events.Melee_Attack:FireServer(
                                v,
                                localPlayer.Character:FindFirstChildOfClass("Tool"),
                                playerRay
                            )
                        end
                    end
                    end
                end
            end
        end
    end
)()
local function getClosestPlayerToCursor(x, y)
    Closest = nil
    local MaxDist, Closest = math.huge
    local Players = game.GetService(game, "Players")
    local LocalPlayer = Players.LocalPlayer
    for I,V in pairs(Players.GetPlayers(Players)) do
        if V == LocalPlayer then continue end
        if not V.Character then continue end
        local Head = V.Character.FindFirstChild(V.Character, targetPart)
        if not Head then continue end
        local humanoid = V.Character.FindFirstChild(V.Character, "Humanoid")
        if not humanoid then continue end
        if humanoid.Health <= 0 then continue end
        if team == nil or #team == 0 or isInTable(team, V.Name) == false then
            if visibleCheck == false or isInTable(getgenv().visiblePlayers, V.Name) == true then
        local Pos, Vis = currentCamera.WorldToScreenPoint(currentCamera, Head.Position)
        if not Vis then continue end
        local MousePos, TheirPos = Vector2.new(x, y), Vector2.new(Pos.X, Pos.Y)
        local Dist = (TheirPos - MousePos).Magnitude 
        if Dist < MaxDist and (Dist < Fov or Fov == 0) then
            MaxDist = Dist
            Closest = V
        end
    end
end
    end
    return Closest
end

local function createPlayerRay()
    local closestPlayer =
        getClosestPlayerToCursor(
        math.floor(currentCamera.ViewportSize.X / 1.9),
        math.floor((currentCamera.ViewportSize.Y - 72) / 2) + Ydown,
        0.1
    )
    if closestPlayer and wl then
        getgenv().targetPlayer = closestPlayer
        local pos = currentCamera.WorldToScreenPoint(currentCamera,closestPlayer.Character[targetPart].Position)
        local screenRay = currentCamera.ScreenPointToRay(currentCamera,pos.X, pos.Y, 0.1)
        local playerRay = Ray.new(screenRay.Origin, screenRay.Direction * 4000)
        return playerRay
    end
    getgenv().targetPlayer = nil
    return nil
end


local toggled = false
spawn(
    function()
        while wait() do
            if toggled == true then
                wait(1)
                local ended = false
                for i, v in pairs(game.Players:GetPlayers()) do
                    if v.Name == tpPlayer or not nameEnabled then
                    if ended == false then
                        if v ~= game.Players.LocalPlayer then
                            if v.Character and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") then
                                if v.Character.Humanoid.Health > 0 then
                                    if team == nil or #team == 0 or isInTable(team, v.Name) == false then
                                        local framepos = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -7)
                                        localPlayer.Character.HumanoidRootPart.Anchored = true
                                        currentCamera.CFrame = v.Character.HumanoidRootPart.CFrame
                                        game.Players.LocalPlayer.Character:MoveTo(
                                            Vector3.new(framepos.X, framepos.Y, framepos.Z)
                                        )
                                        
                                        localPlayer.Character.HumanoidRootPart.Anchored = false
                                        ended = true
                                    end
                                end
                            end
                        end
                        end
                    end
                end
                toggled = false
            end
        end
    end
)

local weaponData = require(game.ReplicatedStorage.Modules["Game_Data"])[constants[12]]
local function weaponMods()
if not getgenv().wepMods then
    library:Notification("Set weapon values", "Alright")
    getgenv().wepMods = true
local rifle = {
    ammoType = constants[10], 
    weaponType = constants[11], 
    spreadCooldown = 0.25, 
    ReloadTime = 1.75, 
    kickBackInc = 0.235, 
    kickBackCount = 2, 
    spreadMultiplier = 150, 
    spreadRate = 1, 
    maxSpread = 6, 
    Mode = "Auto", 
    FireRate = 5.75, 
    scopeType = "None", 
    bulletTravel = 2000, 
    distanceAccuracy = 700, 
    multiShot = false, 
    shotCount = 1, 
    maxAmmo = 30, 
    weaponDamage = 19, 
    projectile = false, 
    baseSpread = 1, 
    adsBoost = 1.275, 
    hasComplexShot = 3
}
for i, v in pairs(getgc(true)) do
    if type(v) == constants[8] then
        local rawCount = 0
        for a, x in pairs(rifle) do
            if rawget(v,a) then
                if tostring(rawget(v,a)) == tostring(x) then
                    rawCount = rawCount + 1
                end
            end
        end
        if rawCount >= 20 and i ~= require(game.ReplicatedStorage.Modules["Game_Data"])[constants[12]][constants[9]] then
            rawCount = 0
            continue
        end
        for a, x in pairs(getgenv().Options["modValues"]) do
            if rawget(v, a) then
                
                if isInTable(weaponData, v) == false then
                    rawset(v, a, x)
                end
            
            end
        end
    end
end
end
end
--// Autopot
coroutine.wrap(
    function()
        while wait() do
            if autopot then
                pcall(
                    function()
                        if localPlayer.Character then
                            for count = 1, 6 do
                                local remote = game.ReplicatedStorage.Remote_Functions.Use_Item
                                local shield = localPlayer.Character.Humanoid.Player_Shield.Value
                                local hp = localPlayer.Character.Humanoid.Player_Health.Value
                                local fuck = "Slot" .. tostring(count)
                                local slot = game.ReplicatedStorage.Player_Storages[localPlayer.Name][fuck]
                                local val = tostring(slot.Value)
                                local equipTool = localPlayer.Character:FindFirstChildOfClass("Tool")
                                if val == "Mini Potion" then
                                    if shield < 50 then
                                        if equipTool.Name ~= val then
                                            for i, v in pairs(localPlayer.Backpack:GetChildren()) do
                                                if v.Name == val then
                                                    localPlayer.Character.Humanoid:EquipTool(v)
                                                end
                                            end
                                            remote:InvokeServer(slot)
                                        else
                                            remote:InvokeServer(slot)
                                        end
                                    end
                                elseif val == "Shield Potion" then
                                    if shield < 75 then
                                        if equipTool.Name ~= val then
                                            for i, v in pairs(localPlayer.Backpack:GetChildren()) do
                                                if v.Name == val then
                                                    localPlayer.Character.Humanoid:EquipTool(v)
                                                end
                                            end
                                            remote:InvokeServer(slot)
                                        else
                                            remote:InvokeServer(slot)
                                        end
                                    end
                                elseif val == "Gulp Jar" then
                                    if shield < 26 then
                                        if equipTool.Name ~= val then
                                            for i, v in pairs(localPlayer.Backpack:GetChildren()) do
                                                if v.Name == val then
                                                    localPlayer.Character.Humanoid:EquipTool(v)
                                                end
                                            end
                                            remote:InvokeServer(slot)
                                        else
                                            remote:InvokeServer(slot)
                                        end
                                    end
                                elseif val == "Guzzle Jug" then
                                    if shield < 75 or health < 75 then
                                        if equipTool.Name ~= val then
                                            for i, v in pairs(localPlayer.Backpack:GetChildren()) do
                                                if v.Name == val then
                                                    localPlayer.Character.Humanoid:EquipTool(v)
                                                end
                                            end
                                            remote:InvokeServer(slot)
                                        else
                                            remote:InvokeServer(slot)
                                        end
                                    end
                                elseif val == "Health Kit" then
                                    if hp < 75 then
                                        if equipTool.Name ~= val then
                                            for i, v in pairs(localPlayer.Backpack:GetChildren()) do
                                                if v.Name == val then
                                                    localPlayer.Character.Humanoid:EquipTool(v)
                                                end
                                            end
                                            remote:InvokeServer(slot)
                                        else
                                            remote:InvokeServer(slot)
                                        end
                                    end
                                elseif val == "Bandage" then
                                    if hp < 75 then
                                        if equipTool.Name ~= val then
                                            for i, v in pairs(localPlayer.Backpack:GetChildren()) do
                                                if v.Name == val then
                                                    localPlayer.Character.Humanoid:EquipTool(v)
                                                end
                                            end
                                            remote:InvokeServer(slot)
                                        else
                                            remote:InvokeServer(slot)
                                        end
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)()

Section3:Button(
    "Weapon Mods",
    "Sets weapons to values stored in getgenv().Options['modValues']",
    function()
        weaponMods()
    end
)
print("loading esp...")
game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(character)
    for i,dec in pairs(character:GetDescendants()) do
        
        if dec:IsA("Part") or dec:IsA("MeshPart") or dec:IsA("BasePart") then
                        dec.Material = "ForceField"
                        dec.Color = fromRGB(61, 176, 26)
                        dec:GetPropertyChangedSignal("Color"):Connect(function()
                            print("Color reverted")
                             dec.Color = fromRGB(61, 176, 26)  
                        end)
    end
    end
    end
    end)
end)

local espTick = tick()
-- // Player Esp
local function initalizeChams()
local chamsTable = {}
local playerConnection = game.Players.PlayerAdded:Connect(
    function(player)
        if player ~= localPlayer then
            local charConnection = player.CharacterAdded:Connect(
                function(character)
                    
                    wait()
                    local wait1 = character:WaitForChild("Head")
                    local wait2 = character:WaitForChild("HumanoidRootPart")
                    local wait3 = character:WaitForChild("Humanoid")
                    for i, v in pairs(character:GetChildren()) do
                        if v:IsA("Part") or v:IsA("MeshPart") then
                            if v.Name ~= "HumanoidRootPart" then
                                --table.insert(chamsTable, player.Name .. "-" .. v.Name)

                                local box = Instance.new("BoxHandleAdornment")
                                box.Size = v.Size
                                box.ZIndex = 0
                                box.AlwaysOnTop = true
                                box.Transparency = EspTransparency
                                if isInTable(team, player.Name) == false then
                                    box.Color3 = Color3.fromRGB(139, 26, 176)
                                else
                                    box.Color3 = Color3.fromRGB(61, 176, 26)
                                end
                                box.Adornee = v
                                box.Parent = v
                            end
                        end
                    end
                end
            )
            table.insert(chamsConnections, charConnection)
            table.insert(chamsConnections, playerConnection)
        end
    end
)
for i, player in pairs(game.Players:GetPlayers()) do
    if player ~= localPlayer then
        
        local charConnection2 = player.CharacterAdded:Connect(
            function(character)
                wait()
                
                local wait1 = character:WaitForChild("Head")
                local wait2 = character:WaitForChild("HumanoidRootPart")
                local wait3 = character:WaitForChild("Humanoid")
                for i, v in pairs(character:GetChildren()) do
                    if v:IsA("Part") or v:IsA("MeshPart") then
                        if v.Name ~= "HumanoidRootPart" then
                            --table.insert(chamsTable, player.Name .. "-" .. v.Name)

                            local box = Instance.new("BoxHandleAdornment")
                            box.Size = v.Size
                            box.ZIndex = 0
                            box.AlwaysOnTop = true
                            box.Transparency = EspTransparency
                            if isInTable(team, player.Name) == false then
                                box.Color3 = Color3.fromRGB(139, 26, 176)
                            else
                                box.Color3 = Color3.fromRGB(61, 176, 26)
                            end
                            box.Adornee = v
                            box.Parent = v
                        end
                    end
                end
            end
        )
        if player.Character then
            local character = player.Character
            local wait1 = character:WaitForChild("Head")
            local wait2 = character:WaitForChild("HumanoidRootPart")
            local wait3 = character:WaitForChild("Humanoid")
            wait()
            for i, v in pairs(character:GetChildren()) do
                if v:IsA("Part") or v:IsA("MeshPart") then
                    if v.Name ~= "HumanoidRootPart" then
                        --table.insert(chamsTable, player.Name .. "-" .. v.Name)

                        local box = Instance.new("BoxHandleAdornment")
                        box.Size = v.Size
                        box.ZIndex = 0
                        box.AlwaysOnTop = true
                        box.Transparency = EspTransparency
                        if isInTable(team, player.Name) == false then
                            box.Color3 = Color3.fromRGB(139, 26, 176)
                        else
                            box.Color3 = Color3.fromRGB(61, 176, 26)
                        end
                        box.Adornee = v
                        box.Parent = v
                    end
                end
            end
        end
        table.insert(chamsConnections, charConnection2)
    end
end

end
if chams then
initalizeChams()
end
espLib.FaceCamera = espLock
espLib.Color = fromRGB(139, 26, 176)
espLib.Names = espNames
espLib.Tracers = espTracers
espLib.Boxes = espBoxes
espLib:Toggle(true)

--[[
local function characterRemoving(char)
    for i, v in next, tracking do
        if v.char == char then
            v:remove()
            remove(tracking, i)
        end
    end
end

local function characterAdded(plr)
    local char = plr.Character
    char:WaitForChild("HumanoidRootPart")
    char:WaitForChild("Head")
    if isInTable(team, plr.Name) == false then
        tracking[#tracking + 1] =
            OwlESP.new(
            {
                plr = plr,
                espBoxVisible = true,
                tracerVisible = true,
                text = plr.Name,
                teamCheck = teamCheck,
                espColor = espColor
            }
        )
    else
        tracking[#tracking + 1] =
            OwlESP.new(
            {
                plr = plr,
                espBoxVisible = true,
                tracerVisible = true,
                text = plr.Name,
                teamCheck = teamCheck,
                espColor = teamEspColor
            }
        )
    end
end

for i, v in next, players:GetPlayers() do
    if v ~= localPlayer then
        local char = v.Character
        if boxEsp then
        if char and char:FindFirstChild("HumanoidRootPart") and char:FindFirstChild("Head") then
            if isInTable(team, v.Name) == false then
                tracking[#tracking + 1] =
                    OwlESP.new(
                    {
                        plr = v,
                        espBoxVisible = true,
                        tracerVisible = true,
                        text = v.Name,
                        teamCheck = teamCheck,
                        espColor = espColor
                    }
                )
            else
                tracking[#tracking + 1] =
                    OwlESP.new(
                    {
                        plr = v,
                        espBoxVisible = true,
                        tracerVisible = true,
                        text = v.Name,
                        teamCheck = teamCheck,
                        espColor = teamEspColor
                    }
                )
            end
        end
    end
        v.CharacterAdded:Connect(
            function()
                if boxEsp then
                    characterAdded(v)
                end
            end
        )
        v.CharacterRemoving:Connect(characterRemoving)
    end
end

local function playerAdded(plr)
    plr.CharacterAdded:Connect(
        function()
            if boxEsp then
                characterAdded(plr)
            end
        end
    )
    plr.CharacterRemoving:Connect(characterRemoving)
end
--]]
players.PlayerAdded:Connect(playerAdded)
Section2:Toggle(
    "Chams",
    "Enables chams esp",
    false,
    function(bool)
        chams = bool
        if bool then
        initalizeChams()
        else
            for i,v in pairs(chamsConnections) do
                v:Disconnect()
            end
            chamsConnections = {}
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v ~= localPlayer and v.Character then
                    for i, v in pairs(v.Character:GetChildren()) do
                        if v:IsA("Part") or v:IsA("MeshPart") then
                            if v.Name ~= "HumanoidRootPart" then
                                local box = v:FindFirstChildOfClass("BoxHandleAdornment")
                                if box then
                                    box:Destroy()
                                end
                            end
                        end
                    end
                end
            end
        end
    end
)
Section5:Dropdown(
    "Glider",
    activeItem("Glider"),
    function(dropdownvalue)
        wearFolder.Glider.Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Tool",
    activeItem("Tool"),
    function(dropdownvalue)
        wearFolder.Tool.Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Clothing",
    activeItem("Clothing"),
    function(dropdownvalue)
        wearFolder.Clothing.Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Hat 1",
    activeItem("Hat"),
    function(dropdownvalue)
        wearFolder.Hat.Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Hat 2",
    activeItem("Hat"),
    function(dropdownvalue)
        wearFolder.Hat2.Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Hat 3",
    activeItem("Hat"),
    function(dropdownvalue)
        wearFolder.Hat3.Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Hat 4",
    activeItem("Hat"),
    function(dropdownvalue)
        wearFolder.Hat4.Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Face",
    activeItem("Face"),
    function(dropdownvalue)
        wearFolder.Face.Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Back Object 1",
    activeItem("Back Object"),
    function(dropdownvalue)
        wearFolder["Back Object"].Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Back Object 2",
    activeItem("Back Object"),
    function(dropdownvalue)
        wearFolder["Back Object2"].Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Back Object 3",
    activeItem("Back Object"),
    function(dropdownvalue)
        wearFolder["Back Object3"].Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Back Object 4",
    activeItem("Back Object"),
    function(dropdownvalue)
        wearFolder["Back Object4"].Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Win Effect",
    activeItem("Effect"),
    function(dropdownvalue)
        wearFolder["Win Effect"].Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Death Effect",
    activeItem("Effect"),
    function(dropdownvalue)
        wearFolder["Death Effect"].Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Bullet Trail",
    activeItem("Trail"),
    function(dropdownvalue)
        wearFolder["Bullet Trail"].Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Dive Trail",
    activeItem("Trail"),
    function(dropdownvalue)
        wearFolder["Dive Trail"].Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Emote 1",
    activeItem("Emote"),
    function(dropdownvalue)
        wearFolder["Emote"].Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Emote 2",
    activeItem("Emote"),
    function(dropdownvalue)
        wearFolder["Emote2"].Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Emote 3",
    activeItem("Emote"),
    function(dropdownvalue)
        wearFolder["Emote3"].Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Emote 4",
    activeItem("Emote"),
    function(dropdownvalue)
        wearFolder["Emote4"].Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Hair",
    activeItem("Hair"),
    function(dropdownvalue)
        wearFolder["Hair"].Value = dropdownvalue
    end
)
Section5:Dropdown(
    "Hair Color",
    activeItem("Hair Color"),
    function(dropdownvalue)
        print(dropdownvalue)
        wearFolder["Hair Color"].Value = BrickColor.new(dropdownvalue)
    end
)
Section5:Dropdown(
    "Skin Color",
    activeItem("Skin Color"),
    function(dropdownvalue)
        wearFolder["Skin Color"].Value = BrickColor.new(dropdownvalue)
    end
)

--// Set Clothing from config

local sPreset = Options["skinChanger"]
if sPreset then
    for i,v in pairs(sPreset) do
        if v then
            if tostring(i) == "Hair Color" or tostring(i) == "Skin Color" then
                wearFolder[tostring(i)].Value = BrickColor.new(v)
                continue
            end
            wearFolder[tostring(i)].Value = v
        end
    end
end
-- //
print("setting metatable hooks...")
local hookTick = tick()
local OldIndex = nil
local OldNameCall = nil

OldNameCall = hookmetamethod(game, "__namecall", function(...)
        local method = getnamecallmethod()
        local args = {...}
        if not checkcaller() and args[1] == game and tostring(method) == "GetService" and args[2] == "LogService" then
            return {GetLogHistory = function()
                end}
        end
        if isInTable({"Airdrop_Watch", "Track", "Spectate_Notify", "Down_Ally", "Falling_Toggle", "Handle_Window", "Stop_Animation", "Force_Flop"}, tostring(args[1])) and tostring(method) == "FireServer" then
            print("Blocked " .. tostring(args[1]))
           return 
        end
	if not checkcaller() and tostring(method) == "GetTotalMemoryUsageMb" then
        	return GenerateFakeMemory();
    	end
        if tostring(args[1]) == "Enable_Particle" and args[2] == 1337 then
           print("Blocked Particle Remote") 
        end
        if not checkcaller() and tostring(method) == constants[14] then 
            return Enum.HumanoidStateType.None
        end 
        if tostring(args[1]) == constants[5] and tostring(method) == "FireServer" then 
            if tostring(args[5]) == "Blunderblast" or tostring(args[5]) == "Flintlock" then
                if tpExploit then
                    if toggled == false then 
                        toggled = true
                    end
                end
                
            end
        
            if weaponData[tostring(args[5])] then
                for i, v in pairs(args) do
                    if type(v) == "table" and v[constants[13]] then 
                        args[i] = weaponData[tostring(args[5])]
                    end
                end
                return OldNameCall(unpack(args))
            else
                print("wep check failed; bullet invalidated")
                return
            end
            
        end
        if tostring(args[1]) == "Request_Bounce" and method == "InvokeServer" then
            if tpExploit then    
                if toggled == false then
                    toggled = true
                end
            end
        end
        if tostring(args[1]) == "Falling_State" and method == "FireServer" then
            if noFall then
                args[2] = 1
                return OldNameCall(unpack(args))
            end
        end
        if not checkcaller() and tostring(method) == "FindPartOnRayWithIgnoreList" then
            if hooktoggle == true and wl then
                if silentAim == true then
                    local scrip = getcallingscript()
                    if scrip == game.Players.LocalPlayer.Character[gunName].Setup.RC then
                            if randomNum <= hitChance then
                                local ray = createPlayerRay()
                                if ray then
                                args[2] = ray
                                return OldNameCall(unpack(args))
                                end
                            end
                    end
                end
            end
        end

        return OldNameCall(...)
    end
)
OldIndex = hookmetamethod(game, "__index", function(tbl,idx)
    if tostring(idx) == "Size" and tostring(tbl) == "HumanoidRootPart" then
        return Vector3.new(1.94494772, 1.02207005, 0.97247386)
    end
    if tostring(tbl) == "Humanoid" and tostring(idx) == "JumpPower" then
        return 58
    end
    if tostring(tbl) == "Humanoid" and wl and tostring(idx) == "WalkSpeed" then
        return 25
    end
    return OldIndex(tbl,idx)
end)

local OldFunction
local Hook = function(self, ...)
    if self == game:GetService("ReplicatedStorage")["Remote_Events"]["Update_Joints"] then
        if antiAim then
            local args = {...}
            args[1] = getgenv().Options["C1"]
            args[2] = getgenv().Options["C2"]
            return OldFunction(self, unpack(args))
        end
    end
    if self == game:GetService("ReplicatedStorage")["Remote_Events"]["Falling_State"]then 
        if noFall then
        local args = {...}
        args[1] = 1
        return OldFunction(self, unpack(args))
        end
    end
    return OldFunction(self, ...)
end
OldFunction = hookfunction(Instance.new("RemoteEvent").FireServer, Hook)
local GetTotalMemoryUsageMb;
GetTotalMemoryUsageMb = hookfunction(game:GetService("Stats").GetTotalMemoryUsageMb, function(Stats)
    return GenerateFakeMemory();
end)
-- //
print("loading misc drawing, keybinds, etc...")
local misc = tick()
-- // Drawing

circle.Visible = circlevis
circle.Transparency = 1
circle.Color = Color3.fromRGB(74, 212, 32)
circle.Thickness = 1
circle.Radius = 100
circle.Filled = false
circle.NumSides = 100
local shiftKeyL = Enum.KeyCode.LeftAlt
local shiftKeyR = Enum.KeyCode.RightAlt
local function Input(input, gameProcessedEvent)
    local value = input.KeyCode
    --print(MB.MouseButton2)
end

UserInputService.InputBegan:Connect(Input)

local function IsKeyDown()
    local buttons = UserInputService:GetMouseButtonsPressed()
    for _, button in pairs(buttons) do
        if tostring(aimlockKeybind) == "MouseButton1" then
            if (button.UserInputType.Name == "MouseButton1") then
                return true
            else
                return false
            end
        end
        if tostring(aimlockKeybind) == "MouseButton2" then
            if (button.UserInputType.Name == "MouseButton2") then
                return true
            else
                return false
            end
        end

        if tostring(aimlockKeybind) == "MouseButton3" then
            if (button.UserInputType.Name == "MouseButton3") then
                return true
            else
                return false
            end
        end
    end
    if tostring(aimlockKeybind) == "MouseButton1" or tostring(aimlockKeybind) == "MouseButton2" or tostring(aimlockKeybind) == "MouseButton3" then
        return false
    else
        return UserInputService:IsKeyDown(aimlockKeybind)
    end
end
local function IsKeyDownNoclip()
    local buttons = UserInputService:GetMouseButtonsPressed()
    local Noclip = getgenv().Options["Noclip"] or Enum.KeyCode.X
    for _, button in pairs(buttons) do
        if tostring(Noclip) == "MouseButton1" then
            if (button.UserInputType.Name == "MouseButton1") then
                return true
            else
                return false
            end
        end
        if tostring(Noclip) == "MouseButton2" then
            if (button.UserInputType.Name == "MouseButton2") then
                return true
            else
                return false
            end
        end

        if tostring(Noclip) == "MouseButton3" then
            if (button.UserInputType.Name == "MouseButton3") then
                return true
            else
                return false
            end
        end
    end
    if Noclip == "MouseButton1" or Noclip == "MouseButton2" or Noclip == "MouseButton3" then
        return false
    else
        return UserInputService:IsKeyDown(getgenv().Options["Noclip"])
    end
end
UserInputService.InputBegan:Connect(function(inputObject, gameProcessedEvent)
    if silentAimToggle then
    if inputObject.KeyCode == saKey then
        silentAim = not silentAim
    end 
end
end)
--// Gun ignores
local spoofCaller = game:GetService("Players").LocalPlayer.PlayerScripts.Client_Code.Client_Manager
local gunIgnores = getrenv()._G.clientGunIgnores2
local result = syn.secure_call(gunIgnores, spoofCaller)
cGunIgnores = {}
coroutine.wrap(function()
    while wait(5) do
        if visibleCheck then
        local spoofCaller = game:GetService("Players").LocalPlayer.PlayerScripts.Client_Code.Client_Manager
        local gunIgnores = getrenv()._G.clientGunIgnores2
        cGunIgnores = syn.secure_call(gunIgnores, spoofCaller)
        end
    end
end)()
--//
local alternate = 0
runService.RenderStepped:Connect(
    function()
        if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
            if walkEnabled then
            localPlayer.Character.Humanoid.WalkSpeed = walk
            end
            if jumpEnabled then
                localPlayer.Character.Humanoid.JumpPower = jump
            end
        end
        
        for i, v in next, tracking do
            v:update()
        end

        if silentAim or aimlock then
            if (Hchance + Uchance + Lchance) > 0 then
                if randomNum2 <= Hchance then
                    targetPart = "Head"
                elseif randomNum2 <= (Hchance + Uchance) then
                    targetPart = "UpperTorso"
                elseif randomNum2 <= (Hchance + Uchance + Lchance) then
                    targetPart = "LowerTorso"
                end
                
            end
        end
        if visibleCheck then
        alternate = alternate + 1
        if alternate >= 2 and wl then
            alternate = 0

            if autowall then
                local closestPlayer =
                    getClosestPlayerToCursor(
                    math.floor(currentCamera.ViewportSize.X / 1.9),
                    math.floor((currentCamera.ViewportSize.Y - 72) / 2) + Ydown,
                    0.1
                    )
                    getgenv().targetPlayer = closestPlayer
                    if getgenv().targetPlayer then
                        mouse1click()
                    end
            end

            for i, player in pairs(game:GetService("Players"):GetPlayers()) do
                if player ~= localPlayer and player.Character then
                    local visChar = player.Character
                    local targetVis = targetPart
                    if
                        visChar:FindFirstChild(targetVis) 
                     then
                        local pos = currentCamera:WorldToScreenPoint(visChar[targetVis].Position)
                        local screenRay = currentCamera:ScreenPointToRay(pos.X, pos.Y, 0.1)
                        local playerRay = Ray.new(screenRay.Origin, screenRay.Direction * 5000)
                        local hitPart = workspace:FindPartOnRayWithIgnoreList(playerRay, cGunIgnores)
                        if hitPart and hitPart:IsDescendantOf(visChar) then
                            if isInTable(getgenv().visiblePlayers, player.Name) == false then
                                table.insert(getgenv().visiblePlayers, player.Name)
                            end
                            for i, v in pairs(visChar:GetChildren()) do
                                if v:IsA("Part") or v:IsA("MeshPart") then
                                    if v.Name ~= "HumanoidRootPart" and v:FindFirstChildOfClass("BoxHandleAdornment") then
                                        v:FindFirstChildOfClass("BoxHandleAdornment").Transparency = 0.8
                                    end
                                end
                            end
                        else
                            if isInTable(getgenv().visiblePlayers, player.Name) == true then
                                local finder = table.find(getgenv().visiblePlayers, player.Name)
                                if finder then
                                    table.remove(getgenv().visiblePlayers, finder)
                                end
                            end
                            for i, v in pairs(visChar:GetChildren()) do
                                if v:IsA("Part") or v:IsA("MeshPart") then
                                    if v.Name ~= "HumanoidRootPart" and v:FindFirstChildOfClass("BoxHandleAdornment") then
                                        v:FindFirstChildOfClass("BoxHandleAdornment").Transparency =
                                            tonumber(EspTransparency)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        end

        if noclipLoop and IsKeyDownNoclip() then
            if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end
        end
        randomNum = random:NextInteger(1, 100)
        randomNum2 = random:NextInteger(1, 100)
        circle.Radius = Fov
        circle.Position =
            Vector2.new(
            math.floor(currentCamera.ViewportSize.X / 1.9),
            math.floor((currentCamera.ViewportSize.Y - 72) / 2) + Ydown
        )
        if Fov == 0 then
            circle.Visible = false
        else
            if circlevis then
            circle.Visible = true
            end
        end
        if aimlock == true then
            if IsKeyDown() == true then
                local closePlayer =
                    getClosestPlayerToCursor(
                    math.floor(currentCamera.ViewportSize.X / 1.9),
                    math.floor((currentCamera.ViewportSize.Y - 72) / 2) + Ydown
                )
                if closePlayer then
                    getgenv().targetPlayerAimlock = closePlayer
                    local mouseMoveValue =
                        Vector2.new(
                        math.floor(currentCamera.ViewportSize.X / 1.9),
                        math.floor((currentCamera.ViewportSize.Y - 72) / 2) + Ydown
                    ) -
                        Vector2.new(
                            currentCamera:WorldToViewportPoint(closePlayer.Character[targetPart].Position).X,
                            currentCamera:WorldToViewportPoint(closePlayer.Character[targetPart].Position).Y
                        )
                    mousemoverel(
                        (mouseMoveValue.X / smoothness) * -1,
                        (mouseMoveValue.Y / smoothness) * -1
                    )
                else
                    getgenv().targetPlayerAimlock = nil
                end
            else
                getgenv().targetPlayerAimlock = nil
            end
        else
            getgenv().targetPlayerAimlock = nil
        end
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and wl then
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Setup") then
                gunName = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                if circlevis then 
                circle.Visible = true
                end
                if silentAim == true then
                    hooktoggle = true
                else
                    getgenv().targetPlayer = nil
                    hooktoggle = false
                end
            else
                getgenv().targetPlayer = nil
                circle.Visible = false
                hooktoggle = false
            end
        else
            getgenv().targetPlayer = nil
            circle.Visible = false
            hooktoggle = false
        end
        for p, o in pairs(game.Players:GetPlayers()) do
            if o.Character then
                if o.Character:FindFirstChild("Humanoid") and o.Character:FindFirstChild("Humanoid").Health <= 0 then
                    for i, v in next, tracking do
                        if v.char == o.Character then
                            v:remove()
                            remove(tracking, i)
                        end
                    end
                end
            end
        end
    end
)
print("Loaded in " .. tick() - startTick)

