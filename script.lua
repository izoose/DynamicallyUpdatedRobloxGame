for _, obj in ipairs(workspace:GetChildren()) do
    if obj:IsA("Part") and obj.Size == Vector3.new(4, 4, 4) then
        obj:Destroy()
    end
end
