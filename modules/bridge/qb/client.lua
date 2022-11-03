local onLogout, Weapon = ...
local QBCore = exports['qb-core']:GetCoreObject()

function client.setPlayerStatus(values)

	for name, value in pairs(values) do
		if name == "thirst" then
			TriggerServerEvent("consumables:server:addThirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + value)
		elseif name == "hunger" then
			TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + value)
		elseif name == "stressRelief" then
			TriggerServerEvent('hud:server:RelieveStress', value)
		end
	end
end

RegisterNetEvent('QBCore:Client:OnPlayerUnload', onLogout)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(data)
	if source == '' or not PlayerData.loaded then return end

	if data.metadata.isdead ~= PlayerData.dead then
		PlayerData.dead = data.metadata.isdead
		OnPlayerData('dead', PlayerData.dead)
	end

	local groups = PlayerData.groups

	if not groups[data.job.name] or not groups[data.gang.name] or groups[data.job.name] ~= data.job.grade.level or groups[data.gang.name] ~= data.gang.grade.level then
		PlayerData.groups = {
			[data.job.name] = data.job.grade.level,
			[data.gang.name] = data.gang.grade.level,
		}

		OnPlayerData('groups', PlayerData.groups)
	end
end)

RegisterNetEvent('police:client:GetCuffed', function()
	PlayerData.cuffed = not PlayerData.cuffed
	LocalPlayer.state:set('invBusy', PlayerData.cuffed, false)

	if not PlayerData.cuffed then return end

	Weapon.Disarm()
end)
