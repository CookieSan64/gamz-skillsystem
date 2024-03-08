ESX = exports["es_extended"]:getSharedObject()

Citizen.CreateThread(function()
	while not ESX.IsPlayerLoaded() do
		Citizen.Wait(5)
	end
	FetchSkills()
	while true do
		local seconds = Config.UpdateFrequency * 1000
		Citizen.Wait(seconds)

		for skill, value in pairs(Config.Skills) do
			UpdateSkill(skill, value["RemoveAmount"])
		end
		TriggerServerEvent("gamz-skillsystem:update", json.encode(Config.Skills))
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(25000)
		local ped = PlayerPedId()
		local vehicle = GetVehiclePedIsUsing(ped)
		if IsPedRunning(ped) then
			UpdateSkill("Stamina", 0.5)
		elseif IsPedInMeleeCombat(ped) then
			UpdateSkill("Strength", 0.5)
		elseif IsPedSwimmingUnderWater(ped) then
			UpdateSkill("Lung Capacity", 0.5)
		end
	end
end)

RegisterCommand("skill", function(source, args, rawCommand)
    SkillMenu()
end, false)
