local Farm = true
--be careful when using for lowTier as you might tp across the map
local crystalName = {"LowTier","MidTier","HighTier","PeakTier","ImmortalTier","DivineTier","TrueTier","OriginTier","GodTier","SovereignTier"}
wait_time = 8
local counter = 1
local Target = "" --copy from the crystalName as the crystal you want and put in the wait time for your harvest speed

while Farm == true do
local mine = workspace.MineSS:GetChildren()
    for k, v in pairs(mine) do
        if v.Name == Target then
            v.Name = Target .. counter
            counter = counter + 1
        end
    end
        for i = 1,100 do
            local Crystal = workspace.MineSS[Target .. i]
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Crystal.CFrame
        wait(0.3)
            local args = {Crystal,Target}
            game:GetService("ReplicatedStorage").Harvest.Harvest:FireServer(unpack(args))
        wait(wait_time)
    end
end