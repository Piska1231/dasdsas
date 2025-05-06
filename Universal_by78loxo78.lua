local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Universal hub by 78loxo78", "RJTheme3")

local Tab = Window:NewTab("Murder Mystery 2")

local Section = Tab:NewSection("Murder Mystery 2")


Section:NewButton("Vertex", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vertex-peak/vertex/refs/heads/main/loadstring"))()
end)


Section:NewButton("Eggs farm by 78loxo78", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/mm2"))("t.me/kawasakiscriptos")
end)


Section:NewButton("FOGGY HUB", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FOGOTY/mm2-piano-reborn/refs/heads/main/scr"))()
end)


Section:NewButton("Xhub", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2"))()
end)


Section:NewButton("YHUB", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Luarmor123/YHUB-Community/refs/heads/main/Murder-Mystery2"))()
end)


Section:NewButton("Farm Eggs 2 by idk", "ButtonInfo", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ago106/SpaceHub/refs/heads/main/Multi'))()
end)


Section:NewButton("SADLUNOV", "ButtonInfo", function()
    _G.CONFIGURATION = {
    minRiftLuck = 2,

    riftEgg = { -- ["EggName"] = priority
        ["Rainbow Egg"] = 8,
        ["Nightmare Egg"] = 9,
        ["Aura Egg"] = 999,
        ["Void Egg"] = 7,
        ["Event 1"] = 101, -- Bunny Egg
        ["Event 2"] = 100 -- Pastel Egg
    },

    webhook = {
        userId = "", -- Discord User ID
        webhookUrl = "", -- webhook
        rarityToSend = {
            "Common",
            "Unique",
            "Rare",
            "Epic",
            "Legendary",
            "Mythic",
            "Secret"
        }
    },

    enableOptimization = false 
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3c4ab478c7ace15ad975e2f7f0db853f.lua"))()
end)


Section:NewButton("KiciaHook", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/kiciahook/kiciahook/refs/heads/main/loader.lua"))()
end)

local Tab = Window:NewTab("Fling Things And People")

local Section = Tab:NewSection("Fling Things And People")


Section:NewButton("RuHub", "ButtonInfo", function()
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- .gg/T9baH5j9NU

-- PLEASE NOTE RUHUB IS IN BETA, SO IT COULD BE BUGGY FOR SOME DEVICES

    getgenv().unlockmouse = false --set to true if you would like to unlock ur mouse!
    getgenv().mousekeybind = "L" -- keybind to unlock and relock your mouse!
    getgenv().saveconfig = false -- set to true  if you want your configurations saved!

    loadstring(game:HttpGet("https://raw.githubusercontent.com/cooldawg123/RuHubFTAPrelease/refs/heads/main/official.lua"))()
end)


Section:NewButton("Blitz Hub", "ButtonInfo", function()
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BlizTBr/scripts/main/FTAP%20(Modified).lua"))()

end)


Section:NewButton("aimlock bind on Q", "ButtonInfo", function()
    local teamCheck = false
local fov = 150
local smoothing = 1

local RunService = game:GetService("RunService")

local FOVring = Drawing.new("Circle")
FOVring.Visible = false
FOVring.Thickness = 1.5
FOVring.Radius = fov
FOVring.Transparency = 1
FOVring.Color = Color3.fromRGB(255, 128, 128)
FOVring.Position = workspace.CurrentCamera.ViewportSize/2

local function getClosest(cframe)
   local ray = Ray.new(cframe.Position, cframe.LookVector).Unit
   
   local target = nil
   local mag = math.huge
   
   for i,v in pairs(game.Players:GetPlayers()) do
       if v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v ~= game.Players.LocalPlayer and (v.Team ~= game.Players.LocalPlayer.Team or (not teamCheck)) then
           local magBuf = (v.Character.Head.Position - ray:ClosestPoint(v.Character.Head.Position)).Magnitude
           
           if magBuf < mag then
               mag = magBuf
               target = v
           end
       end
   end
   
   return target
end

loop = RunService.RenderStepped:Connect(function()
   local UserInputService = game:GetService("UserInputService")
   local pressed = --[[UserInputService:IsKeyDown(Enum.KeyCode.E)]] UserInputService:IsKeyDown(Enum.KeyCode.Q) --Enum.UserInputType.MouseButton2
   local localPlay = game.Players.localPlayer.Character
   local cam = workspace.CurrentCamera
   local zz = workspace.CurrentCamera.ViewportSize/2
   
   if pressed then
       local Line = Drawing.new("Line")
       local curTar = getClosest(cam.CFrame)
       local ssHeadPoint = cam:WorldToScreenPoint(curTar.Character.Head.Position)
       ssHeadPoint = Vector2.new(ssHeadPoint.X, ssHeadPoint.Y)
       if (ssHeadPoint - zz).Magnitude < fov then
           workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(CFrame.new(cam.CFrame.Position, curTar.Character.Head.Position), smoothing)
       end
   end
   
   if UserInputService:IsKeyDown(Enum.KeyCode.Delete) then
       loop:Disconnect()
       FOVring:Remove()
   end
end)
end)

local Tab = Window:NewTab("Dead Rails")

local Section = Tab:NewSection("Dead Rails")

Section:NewButton("NatHub", "This all bro", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ArdyBotzz/NatHub/refs/heads/master/NatHub.lua"))();
end)

local Tab = Window:NewTab("Other")

local Section = Tab:NewSection("Other")

Section:NewButton("Infinite Yield", "universal", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)


Section:NewButton("Aimbot Right Mouse", "universal", function()
    local teamCheck = false
local fov = 5
local smoothing = 1

local RunService = game:GetService("RunService")

local FOVring = Drawing.new("Circle")
FOVring.Visible = true
FOVring.Thickness = 1.5
FOVring.Radius = fov
FOVring.Transparency = 1
FOVring.Color = Color3.fromRGB(255, 255, 255)
FOVring.Position = workspace.CurrentCamera.ViewportSize/2

local function getClosest(cframe)
   local ray = Ray.new(cframe.Position, cframe.LookVector).Unit
   
   local target = nil
   local mag = math.huge
   
   for i,v in pairs(game.Players:GetPlayers()) do
       if v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v ~= game.Players.LocalPlayer and (v.Team ~= game.Players.LocalPlayer.Team or (not teamCheck)) then
           local magBuf = (v.Character.Head.Position - ray:ClosestPoint(v.Character.Head.Position)).Magnitude
           
           if magBuf < mag then
               mag = magBuf
               target = v
           end
       end
   end
   
   return target
end

loop = RunService.RenderStepped:Connect(function()
   local UserInputService = game:GetService("UserInputService")
   local pressed = --[[UserInputService:IsKeyDown(Enum.KeyCode.E)]] UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) --Enum.UserInputType.MouseButton2
   local localPlay = game.Players.localPlayer.Character
   local cam = workspace.CurrentCamera
   local zz = workspace.CurrentCamera.ViewportSize/2
   
   if pressed then
       local Line = Drawing.new("Line")
       local curTar = getClosest(cam.CFrame)
       local ssHeadPoint = cam:WorldToScreenPoint(curTar.Character.Head.Position)
       ssHeadPoint = Vector2.new(ssHeadPoint.X, ssHeadPoint.Y)
       if (ssHeadPoint - zz).Magnitude < fov then
           workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(CFrame.new(cam.CFrame.Position, curTar.Character.Head.Position), smoothing)
       end
   end
   
   if UserInputService:IsKeyDown(Enum.KeyCode.Delete) then
       loop:Disconnect()
       FOVring:Remove()
   end
end)
end)
