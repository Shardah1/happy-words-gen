


--isk

local localPlayer = game.Players.LocalPlayer
local plr = game.Players.LocalPlayer
local bringMessage = ".bring"
local reMessage = ".re"
local sitMessage = ".sit"
local unsitMessage = ".unsit"
local unfreezeMessage = ".unfreeze"
local freezeMessage = ".freeze"
local danceMessage = ".dance"
local unDanceMessage = ".undance"
local senderName = "Dv_saud"
local fact = ".fact"
local adminMessage = ".admin"
local sayCommand = ".say"
local spinCommand = ".spin"
local unspinCommand = ".unspin"
local JumpCommand = ".Jump"
local mathic = ".math"
local commands = "Commands are .bring .re .sit .unsit .freeze .unfreeze .dance .undance .fact .math"
local orbit = ".orbit"
local unorbit = ".unorbit"
local admins = {}
local msgSaid = false
local Cmd = false
local orbiting = false
local adminExc = false
local spinning = false
local sayExc = false
local IsAPlayer = false
local factExecuted = false
local MathExc = false
local dancing = false

--Jump
function onJumpChat(msg, player)
    if msg == JumpCommand and player.Name == senderName or table.find(admins, player.DisplayName) and msg == JumpCommand then
        plr.Character.Humanoid.Jump = true
        end
    end

-- bring
function onBringChat(msg, player)
    if msg == bringMessage and player.Name == senderName or table.find(admins, player.DisplayName) and msg == bringMessage then
        localPlayer.Character.HumanoidRootPart.CFrame =
            player.Character.HumanoidRootPart.CFrame
    end
end

-- re
function onReChat(msg, player)
    if msg == reMessage and player.Name == senderName or table.find(admins, player.DisplayName) and msg == reMessage then
        local pos1 = localPlayer.Character.HumanoidRootPart.CFrame
        wait()
        game:GetService('Players').LocalPlayer.Character['Head']:Destroy()
        wait(9)
        localPlayer.Character.HumanoidRootPart.CFrame = pos1
    end
end

-- dance
function onDanceChat(msg, player)
    if msg == danceMessage and (player.Name == senderName or table.find(admins, player.DisplayName)) and msg == danceMessage then
        game.Players:Chat("/e dance")
        dancing = true
    end
end

-- undance
function onUnDanceChat(msg, player)
    if msg == unDanceMessage and (player.Name == senderName or table.find(admins, player.DisplayName)) and msg == unDanceMessage then
        if dancing == true then
            plr.Character.Humanoid.Jump = true
            dancing = false
        end
    end
end

-- sit
function onSitChat(msg, player)
    if msg == sitMessage and player.Name == senderName or table.find(admins, player.DisplayName) and msg == sitMessage then
        game.Players.LocalPlayer.Character.Humanoid.Sit = true
    end
end

-- unsit
function onUnsitChat(msg, player)
    if msg == unsitMessage and player.Name == senderName or table.find(admins, player.DisplayName) and msg == unsitMessage then
        if localPlayer.Character.Humanoid.Sit == true then
            localPlayer.Character.Humanoid.Sit = false
        end
    end
end

-- unfreeze
function onUnFreezeChat(msg, player)
    if msg == unfreezeMessage and player.Name == senderName or table.find(admins, player.DisplayName) and msg == unfreezeMessage then
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    end
end

-- freeze
function onFreezeChat(msg, player)
    if msg == freezeMessage and player.Name == senderName or table.find(admins, player.DisplayName) and msg == freezeMessage then
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    end
end

-- fact
function onFactChat(msg, player)
    if msg == fact and (player.Name == senderName or table.find(admins, player.DisplayName)) and msg == fact then
        if factExecuted == false then
            factExecuted = true
            local facts = {
  "The average person spends about six months of their lifetime waiting for red lights to turn green.",
  "There are more possible iterations of a game of chess than there are atoms in the known universe.",
  "The shortest war in history was between Britain and Zanzibar in 1896. It lasted only 38 minutes.",
  "Honey never spoils. Archaeologists have found pots of honey in ancient Egyptian tombs that are over 3,000 years old and still perfectly edible.",
  "The world's oldest known recipe is a recipe for beer. It dates back to ancient Sumeria and is over 4,000 years old.",
  "The average person walks the equivalent of three times around the world in their lifetime.",
  "Octopuses have three hearts. Two hearts pump blood to the gills, while the third heart circulates it to the rest of the body.",
  "The original name for the search engine 'Google' was 'Backrub'. It was later renamed to Google, a play on the word 'googol', which is a mathematical term for the number 1 followed by 100 zeros.",
  "The longest word in the English language is 'pneumonoultramicroscopicsilicovolcanoconiosis'. It refers to a lung disease caused by inhaling very fine silica dust found in volcanoes.",
  "The world's largest snowflake was recorded in 1887 in Montana. It was 15 inches in diameter.",
  "Cows have best friends. They form strong bonds with other cows and become stressed when they are separated from their friends.",
  "The Hawaiian alphabet only has 12 letters: A, E, I, O, U, H, K, L, M, N, P, and W.",
  "The average person blinks about 15-20 times per minute, which adds up to about 1,200 times an hour.",
  "Giraffes have the same number of neck vertebrae as humans: seven.",
  "The oldest known living tree is a bristlecone pine named 'Methuselah' in California's White Mountains. It is over 4,800 years old.",
  "The national animal of Scotland is the unicorn.",
  "Squirrels plant thousands of new trees each year. They often forget where they buried their acorns, which allows them to sprout into new trees.",
  "The first known use of the hashtag symbol (#) on Twitter was by Chris Messina in 2007. It has since become widely used on social media platforms.",
  "The longest recorded flight of a chicken is 13 seconds.",
  "Cats have five toes on their front paws but only four toes on their back paws.",
  "The Eiffel Tower can be 15 centimeters taller during the summer due to thermal expansion.",
  "A group of flamingos is called a 'flamboyance'.",
  "The world's smallest mammal is the bumblebee bat. It weighs about the same as a penny.",
  "Bees can recognize human faces. They have the ability to remember and recognize faces for several days.",
  "Elephants are the only mammals that can't jump.",
  "A single cloud can weigh more than a million pounds.",
  "The average person will walk the equivalent of five times around the Earth in their lifetime.",
  "The world's largest ocean, the Pacific Ocean, covers an area greater than all the Earth's landmass combined.",
  "The human brain is the most energy-consuming organ in the body, using up to 20% of the body's total energy.",
  "The oldest known written recipe is for beer, dating back over 4,000 years to ancient Mesopotamia.",
  "The word 'nerd' was first coined by Dr. Seuss in his book 'If I Ran the Zoo' in 1950.",
  "In Japan, there is a festival called Kanamara Matsuri, also known as the 'Festival of the Steel Phallus', which celebrates fertility and is dedicated to a penis-shaped shrine.",
  "The world's largest hot dog, measuring 203.8 meters (669 feet and 4 inches), was created in Paraguay in 2011.",
  "Bananas are berries, while strawberries are not.",
  "The shortest war in history was between England and Zanzibar on August 27, 1896. It lasted only 38 minutes.",
  "A baby spider is called a 'spiderling'.",
  "There is a hotel in Sweden made entirely out of ice. It is rebuilt every year.",
  "The average person will spend about six months of their life waiting for red lights to turn green.",
  "The Great Wall of China is not visible from space without aid.",
  "The average person will eat approximately 35 tons of food in their lifetime.",
  "The Hawaiian word 'aloha' means both 'hello' and 'goodbye'.",
  "An octopus has three hearts.",
  "Oxford University is older than the Aztec Empire.",
  "The coldest temperature ever recorded on Earth was -128.6 degrees Fahrenheit (-89.2 degrees Celsius) in Antarctica.",
  "A snail can sleep for up to three years.",
  "The world's largest pizza was 131 feet in diameter and weighed 51,257 pounds.",
  "A group of pugs is called a 'grumble'.",
  "The fingerprints of a koala are so indistinguishable from humans that they have, on occasion, been confused at a crime scene.",
  "The world's fastest ant is the Saharan silver ant. It can travel up to one meter per second.",
  "The average person will produce enough saliva in their lifetime to fill two swimming pools.",
  "Polar bears are nearly undetectable by infrared cameras due to their transparent fur.",
  "The oldest known musical instrument is a flute made from a bird bone, dating back over 40,000 years.",
  "A crocodile cannot stick its tongue out.",
  "The largest living structure on Earth is the Great Barrier Reef in Australia.",
  "A group of rhinos is called a 'crash'.",
  "The average person will spend about six years of their life dreaming.",
  "The world's largest chocolate bar weighed 12,770 pounds.",
  "The fingerprints of a koala are so indistinguishable from humans that they have, on occasion, been confused at a crime scene.",
  "Penguins have an organ above their eyes that converts seawater into freshwater.",
  "The average person will spend about two weeks of their life kissing.",
  "The electric chair was invented by a dentist.",
  "The oldest known joke is a Sumerian joke written on a cuneiform tablet dating back to 1900 BC.",
  "The average person will produce enough flatulence in their lifetime to fill 2,000 balloons.",
  "The oldest known musical instrument is a flute made from a bird bone, dating back over 40,000 years.",
  "A group of flamingos is called a 'flamboyance'.",
  "The world's smallest mammal is the bumblebee bat. It weighs about the same as a penny.",
  "Bees can recognize human faces. They have the ability to remember and recognize faces for several days.",
  "Elephants are the only mammals that can't jump.",
  "A single cloud can weigh more than a million pounds.",
  "The average person will walk the equivalent of five times around the Earth in their lifetime.",
  "The world's largest ocean, the Pacific Ocean, covers an area greater than all the Earth's landmass combined.",
  "The human brain is the most energy-consuming organ in the body, using up to 20% of the body's total energy.",
  "The oldest known written recipe is for beer, dating back over 4,000 years to ancient Mesopotamia.",
  "The word 'nerd' was first coined by Dr. Seuss in his book 'If I Ran the Zoo' in 1950.",
  "In Japan, there is a festival called Kanamara Matsuri, also known as the 'Festival of the Steel Phallus', which celebrates fertility and is dedicated to a penis-shaped shrine.",
  "The world's largest hot dog, measuring 203.8 meters (669 feet and 4 inches), was created in Paraguay in 2011.",
  "Bananas are berries, while strawberries are not.",
  "The shortest war in history was between England and Zanzibar on August 27, 1896. It lasted only 38 minutes.",
  "A baby spider is called a 'spiderling'.",
  "There is a hotel in Sweden made entirely out of ice. It is rebuilt every year.",
  "The average person will spend about six months of their life waiting for red lights to turn green.",
  "The Great Wall of China is not visible from space without aid.",
  "The average person will eat approximately 35 tons of food in their lifetime.",
  "The Hawaiian word 'aloha' means both 'hello' and 'goodbye'.",
  "An octopus has three hearts.",
  "Oxford University is older than the Aztec Empire.",
  "The coldest temperature ever recorded on Earth was -128.6 degrees Fahrenheit (-89.2 degrees Celsius) in Antarctica.",
  "A snail can sleep for up to three years.",
  "The world's largest pizza was 131 feet in diameter and weighed 51,257 pounds.",
  "A group of pugs is called a 'grumble'.",
  "The fingerprints of a koala are so indistinguishable from humans that they have, on occasion, been confused at a crime scene.",
  "The world's fastest ant is the Saharan silver ant. It can travel up to one meter per second.",
  "The average person will produce enough saliva in their lifetime to fill two swimming pools.",
  "Polar bears are nearly undetectable by infrared cameras due to their transparent fur.",
  "The oldest known musical instrument is a flute made from a bird bone, dating back over 40,000 years.",
  "A crocodile cannot stick its tongue out.",
  "The largest living structure on Earth is the Great Barrier Reef in Australia.",
  "A group of rhinos is called a 'crash'.",
  "The average person will spend about six years of their life dreaming.",
  "The world's largest chocolate bar weighed 12,770 pounds.",
  "The fingerprints of a koala are so indistinguishable from humans that they have, on occasion, been confused at a crime scene.",
  "Penguins have an organ above their eyes that converts seawater into freshwater.",
  "The average person will spend about two weeks of their life kissing.",
  "The electric chair was invented by a dentist.",
        }
            local randomFact = facts[math.random(1, #facts)]
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(randomFact, "All")
            wait(1)
            factExecuted = false
            end
        end
    end

-- math
function onMathChat(msg, player)
    if string.sub(msg, 1, #mathic) == mathic and (player.Name == senderName or table.find(admins, player.DisplayName)) and string.sub(msg, 1, #mathic) == mathic then
        if MathExc == false then
            local plusIndex = string.find(msg, "+")
            if plusIndex then
                local number1 = tonumber(string.sub(msg, #mathic + 1, plusIndex - 1))
                local number2 = tonumber(string.sub(msg, plusIndex + 1))
                if number1 and number2 then
                    local result = number1 + number2
                    local message = "Result: " .. result
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
                else
                    local message = "Invalid numbers provided."
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
                end
            end
            MathExc = true
            wait(1)
            MathExc = false
            end
        end
    end

function onAdminChat(msg, player)
    if adminExc == false then
    if player.Name == senderName and string.sub(msg, 1, #adminMessage) == adminMessage then
        local NewAdmin = string.sub(msg, 8, #msg)
        local AdminFormat = ""
        local IsAPlayer = false -- Define the 'IsAPlayer' variable
        
        for i, v in pairs(game.Players:GetPlayers()) do
                    if v.DisplayName == NewAdmin then
                        IsAPlayer = true
                        AdminFormat = v.Name
                        break
            end
        end
        print(AdminFormat)
        print(NewAdmin)
        if IsAPlayer == true then
            local welcome = "You are now an admin, welcome " .. NewAdmin .. "!"
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(welcome, AdminFormat)
            wait(0.1)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(commands, NewAdmin)
            table.insert(admins, NewAdmin)
        else
            local welcome = "Cannot find player " .. NewAdmin .. "!"
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(welcome, "All")
                    adminExc = true
                    wait(1)
                    adminExc = false
                end
            end
        end
    end

function onSayChat(msg, player)
    if string.sub(msg, 1, #sayCommand) == sayCommand and player.Name == senderName or table.find(admins, player.DisplayName) and string.sub(msg, 1, #sayCommand) == sayCommand then
        if sayExc == false then
            local word = string.sub(msg, 6, #msg)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(word, "All")
            sayExc = true
            wait(1)
            sayExc = false
            end
        end
    end

function onSpinChat(msg, player)
    if msg == spinCommand and player.Name == senderName or table.find(admins, player.DisplayName) and msg == spinCommand then
        if spinning == false then
            spinning = true
            while spinning do
                wait()
                plr.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(5), 0)
                end
            end
        end
    end
function onUnSpinChat(msg, player)
    if msg == unspinCommand and player.Name == senderName or table.find(admins, player.DisplayName) and msg == unspinCommand then
        if spinning == true then
            spinning = false
            end
        end
    end

function onOrbitChat(msg, player)
    if string.sub(msg, 1, #orbit) == orbit and player.Name == senderName or string.sub(msg, 1, #orbit) == orbit and table.find(admins, player.DisplayName) then
        if orbiting == true then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Cannot Orbit "..player.Name.." [cause already orbiting]", "All")
                wait(1)
                end
        
        if orbiting == false then
            local radius = string.sub(msg, 7, #msg)
            radius = tonumber(radius)
            if radius == nil then
                radius = 10
                end
            
            local angle = 0.1
            orbiting = true
            while true do
                wait()
                local orbitTarget = game.Players[player.Name].Character.HumanoidRootPart.CFrame
                local orbitPos = orbitTarget * CFrame.new(radius * math.cos(angle), 0, radius * math.sin(angle)) * CFrame.Angles(0,0,0)
                plr.Character.HumanoidRootPart.CFrame = orbitPos
                angle = angle + 0.1
                if orbiting == false then
                    break
                    end
                end
            end
        end
    end



function onUnOrbitChat(msg, player)
    if msg == unorbit and player.Name == senderName or msg == unorbit and table.find(admins, player.DisplayName) then
        if msgSaid == false then
            orbiting = false
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("orbit [Off]", "All")
            msgSaid = true
            wait(1)
            msgSaid = false
            end
        end
    end


while true do
    wait(1) -- Wait for 1 second before checking again
    for _, player in ipairs(game.Players:GetPlayers()) do
        player.Chatted:Connect(function(msg)
            onSayChat(msg, player)
            onOrbitChat(msg, player)
            onBringChat(msg, player)
            onFreezeChat(msg, player)
            onReChat(msg, player)
            onSitChat(msg, player)
            onUnsitChat(msg, player)
            onUnFreezeChat(msg, player)
            onDanceChat(msg, player)
            onUnDanceChat(msg, player)
            onMathChat(msg, player)
            onAdminChat(msg, player)
            onSpinChat(msg, player)
            onUnSpinChat(msg, player)
            onJumpChat(msg, player)
            onOrbitChat(msg, player)
            onUnOrbitChat(msg, player)
            if msg == fact then
                    onFactChat(msg, player)
                    end
                end)
        end
    end
                        
