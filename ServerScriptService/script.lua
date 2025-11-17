-- Remote GitHub script: toggle behavior via local flag

local remove = true  -- CHANGE THIS TO true IN GITHUB WHEN YOU WANT TO DELETE

local FOLDER_NAME = "GeneratedParts"

local partsFolder = workspace:FindFirstChild(FOLDER_NAME)

if not remove then
    -- create once, don't duplicate on every poll
    if not partsFolder then
        partsFolder = Instance.new("Folder")
        partsFolder.Name = FOLDER_NAME
        partsFolder.Parent = workspace

        for i = 1, 100 do
            local p = Instance.new("Part")
            p.Name = "GeneratedPart_" .. i
            p.Size = Vector3.new(2, 2, 2)
            p.Position = Vector3.new(i * 5, 10, 0)
            p.Anchored = true
            p.Parent = partsFolder
        end
    end
else
    -- remove all generated parts if they exist
    if partsFolder then
        partsFolder:Destroy()
    end
end
