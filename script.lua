for i = 1, 100 do
    local p = Instance.new("Part")
    p.Size = Vector3.new(4, 4, 4)
    p.Position = Vector3.new(i * 5, 10, 0)
    p.Anchored = true
    p.Parent = workspace
end
