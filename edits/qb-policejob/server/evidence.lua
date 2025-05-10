local Casings = {}
local BloodDrops = {}
local FingerDrops = {}
local PlayerStatus = {}

-- Functions

local function CreateBloodId()
    if BloodDrops then
        local bloodId = math.random(10000, 99999)
        while BloodDrops[bloodId] do
            bloodId = math.random(10000, 99999)
        end
        return bloodId
    else
        local bloodId = math.random(10000, 99999)
        return bloodId
    end
end

local function CreateFingerId()
    if FingerDrops then
        local fingerId = math.random(10000, 99999)
        while FingerDrops[fingerId] do
            fingerId = math.random(10000, 99999)
        end
        return fingerId
    else
        local fingerId = math.random(10000, 99999)
        return fingerId
    end
end

local function CreateCasingId()
    if Casings then
        local caseId = math.random(10000, 99999)
        while Casings[caseId] do
            caseId = math.random(10000, 99999)
        end
        return caseId
    else
        local caseId = math.random(10000, 99999)
        return caseId
    end
end

-- Callbacks

QBCore.Functions.CreateCallback('police:GetPlayerStatus', function(_, cb, playerId)
    local Player = QBCore.Functions.GetPlayer(playerId)
    local statList = {}
    if Player then
        if PlayerStatus[Player.PlayerData.source] and next(PlayerStatus[Player.PlayerData.source]) then
            for k in pairs(PlayerStatus[Player.PlayerData.source]) do
                statList[#statList + 1] = PlayerStatus[Player.PlayerData.source][k].text
            end
        end
    end
    cb(statList)
end)

-- Events

RegisterNetEvent('evidence:server:UpdateStatus', function(data)
    local src = source
    PlayerStatus[src] = data
end)

RegisterNetEvent('evidence:server:CreateBloodDrop', function(citizenid, bloodtype, coords)
    local bloodId = CreateBloodId()
    BloodDrops[bloodId] = {
        dna = citizenid,
        bloodtype = bloodtype
    }
    TriggerClientEvent('evidence:client:AddBlooddrop', -1, bloodId, citizenid, bloodtype, coords)
end)

RegisterNetEvent('evidence:server:CreateFingerDrop', function(coords)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local fingerId = CreateFingerId()
    FingerDrops[fingerId] = Player.PlayerData.metadata['fingerprint']
    TriggerClientEvent('evidence:client:AddFingerPrint', -1, fingerId, Player.PlayerData.metadata['fingerprint'], coords)
end)

RegisterNetEvent('evidence:server:ClearBlooddrops', function(blooddropList)
    if blooddropList and next(blooddropList) then
        for _, v in pairs(blooddropList) do
            TriggerClientEvent('evidence:client:RemoveBlooddrop', -1, v)
            BloodDrops[v] = nil
        end
    end
end)

RegisterNetEvent('evidence:server:AddBlooddropToInventory', function(bloodId, bloodInfo)
    local src = source
    if not exports['qb-inventory']:RemoveItem(src, 'empty_evidence_bag', 1, false, 'evidence:server:AddBlooddropToInventory') then
        return TriggerClientEvent('QBCore:Notify', src, Lang:t('error.have_evidence_bag'), 'error')
    end
    local streetName = bloodInfo.street
    local bloodType = bloodInfo.bloodtype
    local bloodDNA = bloodInfo.dnalabel
    local info = {}
    info.type = 'Blood Evidence'
    info.description = 'DNA ID: '..bloodDNA
    info.description = info.description..'\n\nBlood Type: '..bloodType
    info.description = info.description..'\n\nCollected By: '..playerName
    info.description = info.description..'\n\nCollected At: '..streetName
    if exports['qb-inventory']:AddItem(src, 'filled_evidence_bag', 1, false, info, 'evidence:server:AddBlooddropToInventory') then
        TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['filled_evidence_bag'], 'add')
        TriggerClientEvent('evidence:client:RemoveBlooddrop', -1, bloodId)
        BloodDrops[bloodId] = nil
    end
end)

RegisterNetEvent('evidence:server:AddFingerprintToInventory', function(fingerId, fingerInfo)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'empty_evidence_bag', 1, false, 'evidence:server:AddFingerprintToInventory') then
        return TriggerClientEvent('QBCore:Notify', src, Lang:t('error.have_evidence_bag'), 'error')
    end
    local playerName = Player.PlayerData.charinfo.firstname.." "..Player.PlayerData.charinfo.lastname
    local streetName = fingerInfo.street
    local fingerprint = fingerInfo.fingerprint
    local info = {}
    info.type = 'Fingerprint Evidence'
    info.description = 'Fingerprint ID: '..fingerprint
    info.description = info.description..'\n\nCollected By: '..playerName
    info.description = info.description..'\n\nCollected At: '..streetName

    if exports['qb-inventory']:AddItem(src, 'filled_evidence_bag', 1, false, info, 'evidence:server:AddFingerprintToInventory') then
        TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['filled_evidence_bag'], 'add')
        TriggerClientEvent('evidence:client:RemoveFingerprint', -1, fingerId)
        FingerDrops[fingerId] = nil
    end
end)

RegisterNetEvent('evidence:server:CreateCasing', function(weapon, coords)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local casingId = CreateCasingId()
    local weaponInfo = QBCore.Shared.Weapons[weapon]
    local serieNumber = nil
    if weaponInfo then
        local weaponItem = Player.Functions.GetItemByName(weaponInfo['name'])
        if weaponItem then
            if GetResourceState("ox_inventory") == "started" then
                serieNumber = exports.ox_inventory:GetCurrentWeapon(src).metadata.serial
            elseif weaponItem.info and weaponItem.info ~= '' then
                serieNumber = weaponItem.info.serie
            end
        end
    end

    TriggerClientEvent('evidence:client:AddCasing', -1, casingId, weapon, coords, serieNumber)
end)

RegisterNetEvent('evidence:server:ClearCasings', function(casingList)
    if casingList and next(casingList) then
        for _, v in pairs(casingList) do
            TriggerClientEvent('evidence:client:RemoveCasing', -1, v)
            Casings[v] = nil
        end
    end
end)

RegisterNetEvent('evidence:server:AddCasingToInventory', function(casingId, casingInfo)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'empty_evidence_bag', 1, false, 'evidence:server:AddCasingToInventory') then
        return TriggerClientEvent('QBCore:Notify', src, Lang:t('error.have_evidence_bag'), 'error')
    end
    local playerName = Player.PlayerData.charinfo.firstname.." "..Player.PlayerData.charinfo.lastname
    local streetName = casingInfo.street
    local ammoType = casingInfo.ammolabel
    local serialNumber = casingInfo.serie
    local info = {}
    info.type = "Casing Evidence"
    info.description = "Ammo Type: "..ammoType
    info.description = info.description..'\n\nSerial #: '..serialNumber
    info.description = info.description..'\n\nCollected By: '..playerName
    info.description = info.description..'\n\nCollected At: '..streetName

    if exports.ox_inventory:AddItem(src, 'filled_evidence_bag', 1, info) then
        TriggerClientEvent('evidence:client:RemoveCasing', -1, casingId)
        casings[casingId] = nil
    end
    if exports['qb-inventory']:AddItem(src, 'filled_evidence_bag', 1, false, info, 'evidence:server:AddCasingToInventory') then
        TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['filled_evidence_bag'], 'add')
        TriggerClientEvent('evidence:client:RemoveCasing', -1, casingId)
        Casings[casingId] = nil
    end
end)