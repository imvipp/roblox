if game.PlaceId == 7533528186 then
    print("Made by github.com/imvipp")
    getgenv().SecureMode = true

    --local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
    local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()

    local Window = Rayfield:CreateWindow({
        Name = "ShitWare // Pennsylvania",
        LoadingTitle = "ShitWare",
        LoadingSubtitle = "By vip",
        ConfigurationSaving = {
            Enabled = true,
            FolderName = "ShitWare", -- Create a custom folder for your hub/game
            FileName = "Pennsylvania"
        },
        Discord = {
            Enabled = true,
            Invite = "7pMRANYTtD", -- The Discord invite code, do not include discord.gg/
            RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
        KeySystem = true, -- Set this to true to use our key system
        KeySettings = {
            Title = "ShitWare",
            Subtitle = "Key System",
            Note = "Join the discord (discord.gg/7pMRANYTtD)",
            FileName = "ShitWare_Key",
            SaveKey = true,
            GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
            Key = "uwu"
        }
    })

    --#$ Variables $#--

    local plr = game.Players.LocalPlayer

    local maxBalance = {
        200000, -- wallet
        500000 -- bank
    }

    -------------------

    --#$ Bank AutoFarm | FUNCTIONS $#--

    local bAF = false
    local bRobbing = false

    function bAF()
        spawn(function()
            while wait(1.5) do
                if bAF == false then
                    break
                end
                if bAF == true then
                    if bRobbing == false then
                        if game:GetService("Workspace").Buildings.BankFolder.CanBeRobbed.Value == true then
                            bRobbing = true
                            if game.ReplicatedStorage.MoneyData[plr.Name].BankAccount.Value < maxBalance[2] and
                                game.ReplicatedStorage.MoneyData[plr.Name].Cash.Value < maxBalance[1] then
                                plr.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Buildings.BankFolder
                                    .Detector
                                    .CFrame
                                repeat
                                    wait()
                                until plr.BankStats.CashCollected.Value == 15000
                                if plr.BankStats.CashCollected.Value == 15000 then
                                    local npc = game:GetService("Workspace").Systems["Bank Heist Collector"]
                                    plr.Character.HumanoidRootPart.CFrame = npc.Head.CFrame
                                    wait(0.2)
                                    npc.HumanoidRootPart.ProximityPrompt:InputHoldBegin()
                                    wait(npc.HumanoidRootPart.ProximityPrompt.HoldDuration)
                                    npc.HumanoidRootPart.ProximityPrompt:InputHoldEnd()
                                    bRobbing = false
                                end
                            else
                                Rayfield:Notify({
                                    Title = "AutoFarm Error",
                                    Content = "You have maximum balance in your wallet and bank.",
                                    Duration = 3,
                                    Image = 4483362458,
                                    Actions = { -- Notification Buttons
                                        Ignore = {
                                            Name = "Ok",
                                            Callback = function() end
                                        },
                                    },
                                })
                            end
                        end
                    end
                end
            end
        end)
    end

    -----------------------------------

    local TPTab = Window:CreateTab("Teleports", 4483362458)
    local TPSection = TPTab:CreateSection("Teleports")
    local CityTPs_Dropdown = TPTab:CreateDropdown({
        Name = "City locations",
        Options = { "Civ Spawn", "Harmony Bank", "Car DealerShip", "MCSO Spawn", "PSP Spawn", "Prisoners Spawn",
            "CMPD Spawn",
            "MCFD Spawn", "DOT Spawn", "Army Spawn", "Soel's Guns & Ammo", "Casino", "Philly Hospital",
            "Jewelry (OUTSIDE)",
            "Jewelry (INSIDE)", "Los pollos hermanos", "Big Bros (OUTSIDE)", "Big Bros (ROOF)", "Philly Paint Shop",
            "Philly Shooting Club", "Pawn Shop", "PPD Station", "PSP Station", "Capitol (INSIDE)" },
        CurrentOption = "Civ Spawn",
        Flag = "cityLocations", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Option)
            if Option == "Civ Spawn" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1173.93433, 5.88394547, -1880.65991, 1,
                    8.36646841e-09,
                    3.2875324e-14, -8.36646841e-09, 1, 4.62313281e-08, -3.24885315e-14, -4.62313281e-08, 1)
            elseif Option == "Harmony Bank" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(31.5773354, 5.91323566, -356.561401, -0.978007615,
                    -1.89580884e-08, 0.208569288, 3.93860278e-09, 1, 1.09364478e-07, -0.208569288, 1.07780764e-07,
                    -0.978007615)
            elseif Option == "Car DealerShip" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1210.17554, 5.27346802, -1918.92432, 1.28122911e-05,
                    1.10993717e-07, -1, -8.48555981e-09, 1, 1.10993611e-07, 1, 8.48413784e-09, 1.28122911e-05)
            elseif Option == "MCSO Spawn" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(382.288818, 6.24014473, -2281.3103, 1, 3.74453357e-08
                    ,
                    -4.14666402e-14, -3.74453357e-08, 1, -2.88966007e-09, 4.13584369e-14, 2.88966007e-09, 1)
            elseif Option == "PSP Spawn" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2731.01465, 19.3445129, -557.929138, 0.999382854,
                    7.87512704e-08, -0.0351276472, -7.89161447e-08, 1, -3.30711614e-09, 0.0351276472, 6.0772134e-09,
                    0.999382854)
            elseif Option == "Prisoners Spawn" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-3322.72437, -43.3606415, 1017.85297, -0.173402622,
                    -1.5545071e-08, 0.984851003, -3.87683841e-09, 1, 1.51015893e-08, -0.984851003, -1.19945309e-09,
                    -0.173402622)
            elseif Option == "CMPD Spawn" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-598.078003, 5.92038918, 239.346771, 0.965884566,
                    -1.51863355e-09, -0.258973002, 6.3851906e-09, 1, 1.79506117e-08, 0.258973002, -1.8991809e-08,
                    0.965884566)
            elseif Option == "MCFD Spawn" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1215.02686, 5.1999979, -1513.53711, 1,
                    -9.05407305e-09,
                    -3.94508602e-15, 9.05407305e-09, 1, 1.1324002e-07, 2.9198024e-15, -1.1324002e-07, 1)
            elseif Option == "DOT Spawn" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1203.50549, 5.36495876, -1677.8064, 1, 5.4062661e-09
                    ,
                    -3.78522676e-15, -5.4062661e-09, 1, -6.76176128e-08, 3.41966788e-15, 6.76176128e-08, 1)
            elseif Option == "Army Spawn" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1831.17102, 5.30218697, 2344.15625, 1, -
                    9.2644088e-09,
                    -4.07671621e-15, 9.2644088e-09, 1, 1.15873256e-07, 3.00321905e-15, -1.15873256e-07, 1)
            elseif Option == "Soel's Guns & Ammo" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-309.382355, 5.8839426, -135.703949, 0.998898745,
                    2.65400839e-08, 0.0469181463, -2.72317511e-08, 1, 1.41027954e-08, -0.0469181463, -1.53649271e-08,
                    0.998898745)
            elseif Option == "Casino" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(143.98848, 5.88394356, 18.0760098, 0.0201089773,
                    -2.57470525e-08, -0.999797821, 5.29057189e-08, 1, -2.46881644e-08, 0.999797821, -5.23985655e-08,
                    0.0201089773)
            elseif Option == "Philly Hospital" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1001.57166, 5.88399792, 123.13372, 0.0152309462,
                    3.86254619e-08, 0.999884009, -8.09245222e-08, 1, -3.73972426e-08, -0.999884009, -8.03455364e-08,
                    0.0152309462)
            elseif Option == "Jewelry (INSIDE)" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-537.246643, 6.03827095, -853.070435, -0.830620885,
                    7.37640136e-08, 0.556838393, 6.01162355e-08, 1, -4.27955662e-08, -0.556838393, -2.07186468e-09,
                    -0.830620885)
            elseif Option == "Jewelry (OUTSIDE)" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-561.167053, 5.88394451, -854.050842, 0.0213721693,
                    5.21850581e-08, 0.999771595, 2.09134416e-08, 1, -5.26440473e-08, -0.999771595, 2.2033781e-08,
                    0.0213721693)
            elseif Option == "Los pollos hermanos" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-116.03347, 5.88399887, -274.641907, -0.0196507238,
                    9.51928314e-08, 0.999806881, 2.66311257e-08, 1, -9.46877989e-08, -0.999806881, 2.47652991e-08,
                    -0.0196507238)
            elseif Option == "Big Bros (OUTSIDE)" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-572.559998, 5.8839426, -97.0449829, 0.023679141,
                    1.19046923e-08, 0.99971962, 1.91857303e-08, 1, -1.23624604e-08, -0.99971962, 1.94730827e-08,
                    0.023679141)
            elseif Option == "Big Bros (ROOF)" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-510.76825, 236.250916, -228.591446, 0.446605772,
                    2.39485249e-08, 0.894730866, 3.44310465e-08, 1, -4.39524683e-08, -0.894730866, 5.04359434e-08,
                    0.446605772)
            elseif Option == "Philly Shooting Club" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-450.95224, 5.88394356, -571.02179, 0.0151820518,
                    -2.80393078e-08, -0.999884725, 4.91787198e-08, 1, -2.72958189e-08, 0.999884725, -4.87586469e-08,
                    0.0151820518)
            elseif Option == "Philly Paint Shop" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2778.39771, 5.32951736, 453.593018, 0.0230581202,
                    -2.65987765e-08, -0.999734104, 9.58970858e-09, 1, -2.63846704e-08, 0.999734104, -8.97877861e-09,
                    0.0230581202)
            elseif Option == "Pawn Shop" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2708.92627, 6.1139698, 355.354126, 0.992190361,
                    6.5075632e-08, -0.12473283, -6.73238105e-08, 1, -1.3808755e-08, 0.12473283, 2.20984031e-08,
                    0.992190361)
            elseif Option == "PPD Station" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-598.20636, 5.92038822, 194.76738, 0.229997218,
                    -1.06730241e-07, 0.973191261, 5.1633533e-09, 1, 1.08450088e-07, -0.973191261, -1.99182892e-08,
                    0.229997218)
            elseif Option == "PSP Station" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-598.20636, 5.92038822, 194.76738, 0.229997218,
                    -1.06730241e-07, 0.973191261, 5.1633533e-09, 1, 1.08450088e-07, -0.973191261, -1.99182892e-08,
                    0.229997218)
            elseif Option == "Capitol (INSIDE)" then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-598.20636, 5.92038822, 194.76738, 0.229997218,
                    -1.06730241e-07, 0.973191261, 5.1633533e-09, 1, 1.08450088e-07, -0.973191261, -1.99182892e-08,
                    0.229997218)
            end
        end,
    })
    local plrsSection = TPTab:CreateSection("Players")

    local PS = game:GetService("Players")
    local PLIST = {}
    local PlayersTPs = TPTab:CreateDropdown({
        Name = "Teleport to players",
        Options = PLIST,
        CurrentOption = "",
        Flag = "pTPs", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Option)
            plr.Character.HumanoidRootPart.CFrame = PS[Option].Character.HumanoidRootPart.CFrame
        end,
    })
    for _, p in pairs(PS:GetPlayers()) do
        PlayersTPs:Add(p.Name)
    end
    PS.PlayerAdded:Connect(function(p)
        PlayersTPs:Add(p.Name)
    end)
    PS.PlayerRemoving:Connect(function(p)
        PlayersTPs:Remove(p.Name)
    end)

    local Keybind = TPTab:CreateKeybind({
        Name = "Teleport to Mouse Position",
        CurrentKeybind = "Q",
        HoldToInteract = false,
        Flag = "TPMPOS", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Keybind)
            local mouse = plr:GetMouse()
            if mouse.Target then
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
            end
        end,
    })

    local mTab = Window:CreateTab("Money", 4483362458)
    local afSection = mTab:CreateSection("Autofarm")
    local bAF_Toggle = mTab:CreateToggle({
        Name = "Bank AutoFarm",
        Info = "If you turn it off while robbing it will wait till you collect the cash then it will stop autofarming",
        CurrentValue = false,
        Flag = "bAF", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            bAF = Value
            if Value == true then
                bAF()
            end
        end,
    })
    local pstats_warning = mTab:CreateLabel("To use \"Get player stats\" you have to type the target's username NOT DISPLAY NAME. The result will appear in dev console (Press F9 and scroll down)")
    local getPstats = mTab:CreateInput({
        Name = "Get player stats:",
        PlaceholderText = "Target username",
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)
            if PS:FindFirstChild(Text) then
                local p = PS:FindFirstChild(Text)
                if p.DisplayName == p.Name then
                    print("Stats about " ..
                        p.Name ..
                        "\nWallet: $" ..
                        tostring(game.ReplicatedStorage.MoneyData[Text].Cash.Value) ..
                        "\nBank: $" .. tostring(game.ReplicatedStorage.MoneyData[Text].BankAccount.Value))
                else
                    print("Stats about " ..
                        p.DisplayName ..
                        " ( @" ..
                        Text ..
                        " )\nWallet: $" ..
                        tostring(game.ReplicatedStorage.MoneyData[Text].Cash.Value) ..
                        "\nBank: $" .. tostring(game.ReplicatedStorage.MoneyData[Text].BankAccount.Value))
                end

            end
        end,
    })

    local gTab = Window:CreateTab("PvP", 4483362458)
    -- W.I.P: ESP, HB Expander
    local gunsList = {}
    local pstats_warning = gTab:CreateLabel("Modifying your gun will totally remove recoil and will increase firerate, \ndo 100 damage per bullet and you will not have to reload.\nDo not equip the gun while modifying it, you will have to reload it after being modified to see the change.")
    local modGunDropdown = gTab:CreateDropdown({
        Name = "Modify gun stats",
        Options = gunsList,
        CurrentOption = "",
        Flag = "modGun", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Option)
            local m = require(plr.Backpack[Option].Resource.SettingsModule.ClientConfig)
            m['Ammo'] = math.huge
            m['BaseDamage'] = math.huge
            m['LimbDamage'] = math.huge
            m['ArmorDamage'] = math.huge
            m['HeadDamage'] = math.huge
            m["gunrecoil"] = 0
            m["camrecoil"] = 0
            m["AimGunRecoil"] = 0
            m["AimCamRecoil"] = 0
            m["CamShake"] = 0
            m["AimCamShake"] = 0
            m["Kickback"] = 0
            m["AimKickBack"] = 0
            m["Firerate"] = 0.10
            m["FireMode"] = 1
            m["BurstEnabled"] = false
            m["SemiEnabled"] = true
            m["AutoEnabled"] = true
            m["BoltAction"] = false
        end,
    })
    for _, tool in pairs(plr.Backpack:GetChildren()) do
        if tool:IsA("Tool") then
            if (tool.Name == "AK47" or "M4 Carbine" or "Glock 17" or "Serbu BFG-50") then
                modGunDropdown:Add(tool.Name)
            end
        end
    end
    plr.Backpack.ChildAdded:Connect(function(tool)
        if tool:IsA("Tool") then
            if (tool.Name == "AK47" or "M4 Carbine" or "Glock 17" or "Serbu BFG-50") then
                modGunDropdown:Add(tool.Name)
            end
        end
    end)
    plr.Backpack.ChildRemoved:Connect(function(tool)
        if tool:IsA("Tool") then
            if (tool.Name == "AK47" or "M4 Carbine" or "Glock 17" or "Serbu BFG-50") then
                modGunDropdown:Remove(tool.Name)
            end
        end
    end)

    ------------------------------------------------------------

    local camera = workspace.CurrentCamera
    local entities = game:GetService("Players")
    local localplayer = entities.LocalPlayer
    local runservice = game:GetService("RunService")

    local esp_settings = {
        enabled = false,
        skel = true,
        skel_col = Color3.fromRGB(255, 255, 255)
    }

    local function draw(player, character)

        local skel_head = Drawing.new("Line")
        skel_head.Visible = false
        skel_head.Thickness = 1.5
        skel_head.Color = Color3.new(1, 1, 1)

        local skel_torso = Drawing.new("Line")
        skel_torso.Visible = false
        skel_torso.Thickness = 1.5
        skel_torso.Color = Color3.new(1, 1, 1)

        local skel_leftarm = Drawing.new("Line")
        skel_leftarm.Visible = false
        skel_leftarm.Thickness = 1.5
        skel_leftarm.Color = Color3.new(1, 1, 1)

        local skel_rightarm = Drawing.new("Line")
        skel_rightarm.Visible = false
        skel_rightarm.Thickness = 1.5
        skel_rightarm.Color = Color3.new(1, 1, 1)

        local skel_leftleg = Drawing.new("Line")
        skel_leftleg.Visible = false
        skel_leftleg.Thickness = 1.5
        skel_leftleg.Color = Color3.new(1, 1, 1)

        local skel_rightleg = Drawing.new("Line")
        skel_rightleg.Visible = false
        skel_rightleg.Thickness = 1.5
        skel_rightleg.Color = Color3.new(1, 1, 1)

        local function update()
            local connection
            connection = runservice.RenderStepped:Connect(function()

                if workspace:FindFirstChild(character.Name) and
                    character and
                    character:FindFirstChild("HumanoidRootPart") and
                    character:FindFirstChild("Humanoid") and
                    character:FindFirstChild("Humanoid").Health ~= 0 then

                    local character_rootpart_3d = character.HumanoidRootPart.Position
                    local character_rootpart_2d, rootpart_onscreen = camera:WorldToViewportPoint(character_rootpart_3d)

                    if rootpart_onscreen and character.Humanoid.RigType == Enum.HumanoidRigType.R6 and
                        esp_settings.enabled then

                        local head_2d = camera:WorldToViewportPoint(character.Head.Position)
                        local torso_upper_2d = camera:WorldToViewportPoint(character.Torso.Position +
                            Vector3.new(0, 1, 0))
                        local torso_lower_2d = camera:WorldToViewportPoint(character.Torso.Position +
                            Vector3.new(0, -1, 0))

                        local leftarm_2d = camera:WorldToViewportPoint(character["Left Arm"].Position +
                            Vector3.new(0, -1, 0))
                        local rightarm_2d = camera:WorldToViewportPoint(character["Right Arm"].Position +
                            Vector3.new(0, -1,
                                0))
                        local leftleg_2d = camera:WorldToViewportPoint(character["Left Leg"].Position +
                            Vector3.new(0, -1, 0))
                        local rightleg_2d = camera:WorldToViewportPoint(character["Right Leg"].Position +
                            Vector3.new(0, -1,
                                0))

                        skel_head.From = Vector2.new(head_2d.X, head_2d.Y)
                        skel_head.To = Vector2.new(torso_upper_2d.X, torso_upper_2d.Y)

                        skel_torso.From = Vector2.new(torso_upper_2d.X, torso_upper_2d.Y)
                        skel_torso.To = Vector2.new(torso_lower_2d.X, torso_lower_2d.Y)

                        skel_leftarm.From = Vector2.new(torso_upper_2d.X, torso_upper_2d.Y)
                        skel_leftarm.To = Vector2.new(leftarm_2d.X, leftarm_2d.Y)

                        skel_rightarm.From = Vector2.new(torso_upper_2d.X, torso_upper_2d.Y)
                        skel_rightarm.To = Vector2.new(rightarm_2d.X, rightarm_2d.Y)

                        skel_leftleg.From = Vector2.new(torso_lower_2d.X, torso_lower_2d.Y)
                        skel_leftleg.To = Vector2.new(leftleg_2d.X, leftleg_2d.Y)

                        skel_rightleg.From = Vector2.new(torso_lower_2d.X, torso_lower_2d.Y)
                        skel_rightleg.To = Vector2.new(rightleg_2d.X, rightleg_2d.Y)

                        skel_head.Visible = esp_settings.skel
                        skel_torso.Visible = esp_settings.skel
                        skel_leftarm.Visible = esp_settings.skel
                        skel_rightarm.Visible = esp_settings.skel
                        skel_leftleg.Visible = esp_settings.skel
                        skel_rightleg.Visible = esp_settings.skel

                    else

                        skel_head.Visible = false
                        skel_torso.Visible = false
                        skel_leftarm.Visible = false
                        skel_rightarm.Visible = false
                        skel_leftleg.Visible = false
                        skel_rightleg.Visible = false

                    end

                else

                    if player == nil then
                        connection:Disconnect()
                        connection = nil
                    end

                    skel_head.Visible = false
                    skel_torso.Visible = false
                    skel_leftarm.Visible = false
                    skel_rightarm.Visible = false
                    skel_leftleg.Visible = false
                    skel_rightleg.Visible = false
                    character.Head.espp:Destroy()
                    for _, limb in pairs(character:GetChildren()) do
                        if limb:IsA("BasePart") then
                            limb.lol:Destroy()
                        end
                    end
                end
            end)
        end

        coroutine.wrap(update)()

    end

    local function tagESP(player)
        for _, limb in pairs(player.Character:GetChildren()) do
            if limb:IsA("BasePart") and (not player == plr) then
                local b = Instance.new("Highlight", limb)
                b.Name = "lol"
                b.Adornee = limb
                b.FillColor = player.TeamColor.Color
                b.FillTransparency = .7
                b.OutlineColor = player.TeamColor.Color
                b.OutlineTransparency = .5
                if limb.Name == "Head" then
                    local BillboardGui = Instance.new("BillboardGui")
                    local TextLabel = Instance.new("TextLabel")

                    BillboardGui.Name = "espp"
                    BillboardGui.MaxDistance = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368
                    BillboardGui.Parent = limb
                    BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    BillboardGui.Active = true
                    BillboardGui.AlwaysOnTop = true
                    BillboardGui.ExtentsOffset = Vector3.new(0, 2, 0)
                    BillboardGui.LightInfluence = 1.000
                    BillboardGui.Size = UDim2.new(0, 200, 0, 50)

                    TextLabel.Name = "xd"
                    TextLabel.Parent = BillboardGui
                    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel.BackgroundTransparency = 1.000
                    TextLabel.Size = UDim2.new(0, 200, 0, 50)
                    TextLabel.Font = Enum.Font.SourceSans
                    if player.DisplayName == player.Name then
                        TextLabel.Text = player.Name .. " | " .. tostring(player.Character.Humanoid.Health) .. "%"
                    else
                        TextLabel.Text = player.DisplayName ..
                            " (@" .. player.Name .. ") | " .. tostring(player.Character.Humanoid.Health) .. "%"
                    end
                    TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                    TextLabel.TextSize = 14.000
                    TextLabel.TextStrokeTransparency = 0.000
                end
            end
        end
    end

    local function playeradded(player)
        if player.Character then
            coroutine.wrap(draw)(player, player.Character)
            tagESP(player)
        end
        player.CharacterAdded:Connect(function(character)
            coroutine.wrap(draw)(player, character)
            tagESP(player)
        end)
    end

    for a, b in next, entities:GetPlayers() do
        if b ~= localplayer then
            playeradded(b)
        end
    end

    entities.PlayerAdded:Connect(playeradded)

    -------------------------------------------------------------

    local ESP = gTab:CreateToggle({
        Name = "ESP",
        CurrentValue = false,
        Flag = "ESP", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            esp_settings.enabled = Value
        end,
    })

    local hbe = false

    local HBEpartDropdown = gTab:CreateDropdown({
        Name = "Hitbox expander part:",
        Options = { "Head", "HumanoidRootPart" },
        CurrentOption = "HumanoidRootPart",
        Flag = "HBEpart", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Option) end,
    })

    local HBEpartToggle = gTab:CreateToggle({
        Name = "Hitbox expander",
        CurrentValue = false,
        Flag = "HBEtoggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            hbe = Value
            if Value == true then
                spawn(function()
                    while wait() do
                        if hbe == false then
                            for i, v in next, game:GetService("Players"):GetPlayers() do
                                if v.Name ~= game:GetService("Players").LocalPlayer.Name then
                                    pcall(function()
                                        if HBEpartDropdown.CurrentOption == "HumanoidRootPart" then
                                            v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                                            v.Character.HumanoidRootPart.Transparency = 1
                                            v.Character.HumanoidRootPart.Material = "Plastic"
                                            v.Character.HumanoidRootPart.CanCollide = true
                                        elseif HBEpartDropdown.CurrentOption == "Head" then
                                            v.Character.Head.Size = Vector3.new(2, 1, 1)
                                            v.Character.Head.CanCollide = true
                                        end
                                    end)
                                end
                            end
                            break;
                        end
                        for i, v in next, game:GetService("Players"):GetPlayers() do
                            if v.Name ~= game:GetService("Players").LocalPlayer.Name then
                                pcall(function()
                                    if HBEpartDropdown.CurrentOption == "HumanoidRootPart" then
                                        v.Character.HumanoidRootPart.Size = Vector3.new(20, 20, 20)
                                        v.Character.HumanoidRootPart.Transparency = 0.7
                                        v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really white")
                                        v.Character.HumanoidRootPart.Material = "Neon"
                                        v.Character.HumanoidRootPart.CanCollide = false
                                    elseif HBEpartDropdown.CurrentOption == "Head" then
                                        v.Character.Head.Size = Vector3.new(6, 6, 6)
                                        v.Character.Head.CanCollide = false
                                    end
                                end)
                            end
                        end
                    end
                end)
            end
        end,
    })

    local lpTab = Window:CreateTab("Player", 4483362458)
    local autobuyinfo = lpTab:CreateLabel("You must have the minium money to buy the tool")
    local autobuyDropdown = lpTab:CreateDropdown({
        Name = "Buy in-game item:",
        Options = { "Drill", "Protest", "Hammer", "Crowbar", "Gas Can", "Tire Pump", "Vest", "AK47", "Glock 17",
            "M4 Carbine",
            "Serbu BFG-50", "Knife" },
        CurrentOption = "",
        Flag = "ingameItem", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Option)
            if Option == "Vest" then
                game.ReplicatedStorage.BuyVest:FireServer()
            else
                game:GetService("ReplicatedStorage").MoneySystem:FireServer("ShopSystem", { ["Tool"] = Option })
            end
        end,
    })

    local infstamina = lpTab:CreateToggle({
        Name = "Infinite Stamina",
        CurrentValue = false,
        Flag = "infstamina", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            local UIS = game:GetService("UserInputService")
            local xd = UIS.InputBegan:Connect(function(input, isTyping)
                if input.KeyCode == Enum.KeyCode.LeftShift and isTyping == false then
                    plr.Character.Humanoid.WalkSpeed = 26
                end
            end)
            local xd2 = UIS.InputEnded:Connect(function(input, isTyping)
                if input.KeyCode == Enum.KeyCode.LeftShift and isTyping == false then
                    plr.Character.Humanoid.WalkSpeed = 16
                end
            end)
            if Value == true then
                plr.PlayerGui.MainUI.Stamina.SprintHandler.Disabled = true
            else
                xd:Disconnect()
                xd2:Disconnect()
                plr.PlayerGui.MainUI.Stamina.SprintHandler.Disabled = false
            end
        end,
    })

    local deposit = lpTab:CreateInput({
        Name = "Deposit (ATM):",
        Info = "Must be a number value, maximum length: 6 characters, \nmaximum amount: 200000",
        PlaceholderText = "Money amount",
        NumbersOnly = true, -- If the user can only type numbers.
        CharacterLimit = 6, --max character limit. Remove if none.
        OnEnter = true,
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)
            if tonumber(game.ReplicatedStorage.MoneyData[plr.Name].Cash.Value) > tonumber(Text) then
                game:GetService("ReplicatedStorage").MoneySystem:FireServer("ATM",
                    { ["action"] = "deposit", ["amount"] = tonumber(Text) })
            end
        end,
    })

    local withdraw = lpTab:CreateInput({
        Name = "Withdraw (ATM):",
        Info = "Must be a number value, maximum length: 6 characters, \nmaximum amount: 200000",
        PlaceholderText = "Money amount",
        NumbersOnly = true, -- If the user can only type numbers.
        CharacterLimit = 6, --max character limit. Remove if none.
        OnEnter = true,
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)
            if tonumber(game.ReplicatedStorage.MoneyData[plr.Name].BankAccount.Value) > tonumber(Text) then
                game:GetService("ReplicatedStorage").MoneySystem:FireServer("ATM",
                    { ["action"] = "withdraw", ["amount"] = tonumber(Text) })
            end
        end,
    })

    -- to be done: walkspeed, jumppower, view players, animations, full bright, noclip, inf jump, plr reset, radio logger
end