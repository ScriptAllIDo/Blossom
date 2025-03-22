-- Load the DrRay UI Library
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("DrRay", "Default")

-- Create a new tab called "My Tab"
local tab = DrRayLibrary.newTab("My Tab", "ImageIdHere")

-- Add a button for collecting chests
tab.newButton("Collect Chests 🌸", "Collects nearby chests.", function()
    task.spawn(function()
        local MaxSpeed = 300  -- Studs per second
        local LocalPlayer = game:GetService("Players").LocalPlayer

        -- Function to get the player's character
        local function getCharacter()
            if not LocalPlayer.Character then
                LocalPlayer.CharacterAdded:Wait()
            end
            LocalPlayer.Character:WaitForChild("HumanoidRootPart")
            return LocalPlayer.Character
        end

        -- Function to sort chests by distance from player
        local function DistanceFromPlrSort(ObjectList)
            local RootPart = getCharacter().LowerTorso
            table.sort(ObjectList, function(ChestA, ChestB)
                local RootPos = RootPart.Position
                local DistanceA = (RootPos - ChestA.Position).Magnitude
                local DistanceB = (RootPos - ChestB.Position).Magnitude
                return DistanceA < DistanceB
            end)
        end

        -- Collect all chests
        local UncheckedChests = {}
        local FirstRun = true

        -- Get sorted chests
        local function getChestsSorted()
            if FirstRun then
                FirstRun = false
                local Objects = game:GetDescendants()
                for _, Object in pairs(Objects) do
                    if Object.Name:find("Chest") and Object:IsA("Part") then
                        table.insert(UncheckedChests, Object)
                    end
                end
            end
            local Chests = {}
            for _, Chest in pairs(UncheckedChests) do
                if Chest:FindFirstChild("TouchInterest") then
                    table.insert(Chests, Chest)
                end
            end
            DistanceFromPlrSort(Chests)
            return Chests
        end

        -- Function to toggle noclip (disable collisions)
        local function toggleNoclip(Toggle)
            for _, v in pairs(getCharacter():GetChildren()) do
                if v:IsA("Part") then
                    v.CanCollide = not Toggle
                end
            end
        end

        -- Teleport player to a specific location
        local function Teleport(Goal, Speed)
            if not Speed then
                Speed = MaxSpeed
            end
            toggleNoclip(true)
            local RootPart = getCharacter().HumanoidRootPart
            local Magnitude = (RootPart.Position - Goal.Position).Magnitude

            RootPart.CFrame = RootPart.CFrame
            while not (Magnitude < 1) do
                local Direction = (Goal.Position - RootPart.Position).unit
                RootPart.CFrame = RootPart.CFrame + Direction * (Speed * task.wait())
                Magnitude = (RootPart.Position - Goal.Position).Magnitude
            end
            toggleNoclip(false)
        end

        -- Main loop to teleport to chests
        local function main()
            while task.wait() do
                local Chests = getChestsSorted()
                if #Chests > 0 then
                    Teleport(Chests[1].CFrame)
                else
                    -- Optional: Server hop here if no chests are found
                end
            end
        end

        main()
    end)
end)

-- Add other UI elements as needed (button, toggle, slider, etc.)
tab.newToggle("Toggle", "Toggle! (prints the state)", true, function(toggleState)
    if toggleState then
        print("On")
    else
        print("Off")
    end
end)

tab.newInput("Input", "Prints your input.", function(text)
    print("Entered text: " .. text)
end)

tab.newKeybind("Input Key", "Press the key to start; it will be printed out.", function(key)
    print(key)
end)

tab.newSlider("Slider", "Epic slider", 1000, false, function(num)
    print(num)
end)
