if not Config.UseTarget then return end

local TargetPeds = {
    Store = {},
    ClothingRoom = {},
    PlayerOutfitRoom = {}
}

Target = {}

function Target.IsOX()
    return GetResourceState("ox_target") ~= "missing"
end

function Target.IsQB()
    return GetResourceState("qb-target") ~= "missing"
end

local function RemoveTargetPeds(peds)
    for i = 1, #peds, 1 do
        DeletePed(peds[i])
    end
end

local function RemoveTargets()
    if Config.EnablePedsForShops then
        RemoveTargetPeds(TargetPeds.Store)
    else
        for k, v in pairs(Config.Stores) do
            Target.RemoveZone(v.type .. k)
        end
    end

    if Config.EnablePedsForClothingRooms then
        RemoveTargetPeds(TargetPeds.ClothingRoom)
    else
        for k, v in pairs(Config.ClothingRooms) do
            Target.RemoveZone("clothing_" .. (v.job or v.gang) .. k)
        end
    end

    if Config.EnablePedsForPlayerOutfitRooms then
        RemoveTargetPeds(TargetPeds.PlayerOutfitRoom)
    else
        for k in pairs(Config.PlayerOutfitRooms) do
            Target.RemoveZone("playeroutfitroom_" .. k)
        end
    end
end

AddEventHandler("onResourceStop", function(resource)
    if resource == GetCurrentResourceName() then
        if Target.IsTargetStarted() then
            RemoveTargets()
        end
    end
end)

local function CreatePedAtCoords(pedModel, coords, scenario)
    pedModel = type(pedModel) == "string" and joaat(pedModel) or pedModel
    lib.requestModel(pedModel)
    local ped = CreatePed(0, pedModel, coords.x, coords.y, coords.z - 0.98, coords.w, false, false)
    TaskStartScenarioInPlace(ped, scenario, true)
    FreezeEntityPosition(ped, true)
    SetEntityVisible(ped, true)
    SetEntityInvincible(ped, true)
    PlaceObjectOnGroundProperly(ped)
    SetBlockingOfNonTemporaryEvents(ped, true)
    return ped
end

local function SetupStoreTarget(targetConfig, action, k, v)
    local parameters = {
        options = { {
            type = "client",
            action = action,
            icon = targetConfig.icon,
            label = targetConfig.label
        } },
        distance = targetConfig.distance,
        rotation = v.rotation
    }

    if Config.EnablePedsForShops then
        TargetPeds.Store[k] = CreatePedAtCoords(v.targetModel or targetConfig.model, v.coords,
            v.targetScenario or targetConfig.scenario)
        Target.AddTargetEntity(TargetPeds.Store[k], parameters)
    elseif v.usePoly then
        Target.AddPolyZone(v.type .. k, v.points, parameters)
    else
        Target.AddBoxZone(v.type .. k, v.coords, v.size, parameters)
    end
end

local function SetupStoreTargets()
    for k, v in pairs(Config.Stores) do
        local targetConfig = Config.TargetConfig[v.type]
        local action

        if v.type == "barber" then
            action = function()
                exports.bl_appearance:OpenMenu({
                    type = "barber", -- types from your data/menus.lua
                })
            end
        elseif v.type == "clothing" then
            action = function()
                exports.bl_appearance:OpenMenu({
                    type = "clothing", -- types from your data/menus.lua
                })
            end
        elseif v.type == "tattoo" then
            action = function()
                exports.bl_appearance:OpenMenu({
                    type = "tattoos", -- types from your data/menus.lua
                })
            end
        elseif v.type == "surgeon" then
            action = function()
                exports.bl_appearance:OpenMenu({
                    type = "surgeon", -- types from your data/menus.lua
                })
            end
        end

        if not (Config.RCoreTattoosCompatibility and v.type == "tattoo") then
            SetupStoreTarget(targetConfig, action, k, v)
        end
    end
end

local function SetupTargets()
    SetupStoreTargets()
end

CreateThread(function()
    if Config.UseTarget then
        SetupTargets()
    end
end)
