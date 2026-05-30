-- LocalScript (script if yk) inside your button
local button = script.Parent
local targetPart = workspace:WaitForChild("explodingpart") -- change to your target part name

button.MouseButton1Click:Connect(function()
    local exp = Instance.new("Explosion")
    exp.Position = targetPart.Position
    exp.BlastRadius = 10
    exp.BlastPressure = 5e5
    exp.Parent = workspace
    targetPart:Destroy()
end)
