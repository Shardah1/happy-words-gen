


-- Gaming Chair


function say(a)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(a, "All")
    end

local excuses = {
  "My gaming chair stopped working during the game. This is why you won.",
  "One of the wheels on my gaming chair broke, causing me to lose balance. This is why you won.",
  "I accidentally knocked my keyboard off my gaming chair. This is why you won.",
  "My gaming chair couldn't adjust to the right height. This is why you won.",
  "The backrest of my gaming chair got stuck. This is why you won.",
  "I leaned back too far in my gaming chair, and it tipped over. This is why you won.",
  "My gaming chair's cushioning deflated, making it uncomfortable to sit. This is why you won.",
  "The armrest of my gaming chair snapped off. This is why you won.",
  "My gaming chair's upholstery ripped, making it uncomfortable to use. This is why you won.",
  "The lumbar support on my gaming chair failed, causing discomfort. This is why you won.",
  "My gaming chair's reclining mechanism jammed, making it hard to find a comfortable position. This is why you won.",
  "The headrest on my gaming chair detached, affecting my posture. This is why you won.",
  "My gaming chair's rocking function got stuck, throwing off my concentration. This is why you won.",
  "I accidentally spilled liquid on my gaming chair, causing a short circuit. This is why you won.",
  "My gaming chair's USB ports stopped working, preventing me from connecting peripherals. This is why you won.",
  "The RGB lighting on my gaming chair malfunctioned, distracting me during the game. This is why you won.",
  "My gaming chair's footrest broke, hindering my comfort and relaxation. This is why you won.",
  "The padding on my gaming chair's armrest wore out, causing discomfort. This is why you won.",
  "My gaming chair's frame cracked, making it unstable to sit on. This is why you won.",
  "The caster wheels on my gaming chair got tangled, restricting my movement. This is why you won.",
  "My gaming chair's gas lift failed, and I couldn't adjust the height. This is why you won.",
  "The swivel mechanism on my gaming chair got stuck, limiting my mobility. This is why you won.",
  "My gaming chair's armrests kept sliding down, affecting my arm positioning. This is why you won.",
  "The stitching on my gaming chair's upholstery came undone, causing irritation. This is why you won.",
  "My gaming chair's lumbar massage feature malfunctioned, distracting me. This is why you won.",
  "The reclining lever on my gaming chair broke off, making it hard to recline. This is why you won.",
  "My gaming chair's cup holder broke, causing spills and interruptions. This is why you won.",
  "The cushioning on my gaming chair's seat flattened, making it uncomfortable to sit for long periods. This is why you won.",
  "My gaming chair's armrests were too narrow, causing discomfort during gameplay. This is why you won.",
  "The material on my gaming chair's seat tore, making it unsuitable to sit on. This is why you won.",
  "My gaming chair's adjustable headrest got stuck, affecting my neck support. This is why you won.",
  "The squeaking noise from my gaming chair's mechanism distracted me during the game. This is why you won.",
  "My gaming chair's armrests were misaligned, affecting my arm and wrist positioning. This is why you won.",
  "The padding on my gaming chair's headrest wore out, causing discomfort. This is why you won.",
  "My gaming chair's footrest mechanism got jammed, preventing me from using it. This is why you won.",
  "The seat pan on my gaming chair was too hard, causing discomfort. This is why you won.",
  "My gaming chair's lumbar pillow fell off, affecting my posture. This is why you won.",
  "The material on my gaming chair's armrests started peeling, making it unpleasant to touch. This is why you won.",
}

local exc = false

local plr = game.Players.LocalPlayer
function OnDeath()
    local humanoid = plr.Character:WaitForChild("Humanoid")
    if exc == false then
        if humanoid.Health <= 10 then
            local num = math.random(1, #excuses)
            say(excuses[num])
            end
        end
    exc = true
    if humanoid.Health >= 15 then
        exc = false
        end
    end

while true do
    OnDeath()
    wait()
    end
