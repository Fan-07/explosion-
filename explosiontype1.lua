-- use this if you want:
-- walk up to a part, press E, click the part and that exact part explodes
-- obviously put this as a localscript (script if non client-only) in that exact part
-- (script handles proximity prompt)

local part = script.Parent

local prompt = Instance.new("ProximityPrompt")
prompt.ActionText = "Explode"
prompt.KeyboardKeyCode = Enum.KeyCode.E -- change this from E to something else if you want another button to press to explode
prompt.MaxActivationDistance = 10
prompt.Parent = part

prompt.Triggered:Connect(function(player)
    local exp = Instance.new("Explosion")
    exp.Position = part.Position
    exp.BlastRadius = 10
    exp.BlastPressure = 5e5
    exp.Parent = workspace
    part:Destroy()
end)
