local Rayfield = loadstring(game:HttpGet('https://sirius.menu/ray'))()


local Window = Rayfield:CreateWindow({
   Name = "Nyro hub",
   LoadingTitle = "Loading...",
   LoadingSubtitle = "by idiot",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Nyro hub"
   },
   Discord = {
      Enabled = false,
      Invite = "",
      RememberJoins = true
   },
   KeySystem = false,
   KeySettings = {
      Title = "Nyro hub",
      Subtitle = "Key System",
      Note = "Join in the discord ()",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"098723217"} 
   }
})


local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image



local Toggle = Tab:CreateToggle({
   Name = "Infinite Jump",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(InfiniteJumpEnabled)
     local InfiniteJumpEnabled = true
     game:GetService("UserInputService").JumpRequest:connect(function()
       if InfiniteJumpEnabled then
         game:GetService"Players".LocalPlayer.Character:FindFirstChild0fClass'Humanoid':ChangeState("Jumping")
   end,
})



local Slider = MainTab:CreateSlider({
   Name = "Walkspeed",
   Range = {20, 250},
   Increment = 10,
   Suffix = "Walkspeed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(v)
     game.Players.LocalPlayer.Character.Humanoid.Walkspeed = v
   end,
})



local Slider = MainTab:CreateSlider({
   Name = "JumpPower",
   Range = {50, 500},
   Increment = 10,
   Suffix = "JumpPower",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(v)
     game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
   end,l
})
Rayfield:LoadConfiguration()
