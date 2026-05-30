-- put this proxmity prompt code into 
local part = script.Parent
local targetPart = workspace:WaitForChild("explodingpart") -- change this to your target part name (you must never have another part with the same name in the workspace unless you awnt it to have the same prompt)

local prompt = Instance.new("ProximityPrompt")
prompt.ActionText = "Explode"
prompt.KeyboardKeyCode = Enum.KeyCode.E --can set ur own activation key
prompt.MaxActivationDistance = 10
prompt.Parent = part

prompt.Triggered:Connect(function(player)
    local exp = Instance.new("Explosion")
    exp.Position = targetPart.Position
    exp.BlastRadius = 10
    exp.BlastPressure = 5e5
    exp.Parent = workspace
    targetPart:Destroy()
end)
