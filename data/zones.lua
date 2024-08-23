--https://github.com/iLLeniumStudios/illenium-appearance/blob/main/shared/config.lua

local key = Config.openControl
local control = Config.openControl
local textUi = Config.textUi and exports.bl_bridge:textui()
local currentZone = nil
local sprites = {}
local stores = Config.Stores

local function setupZones()
    if not textUi and GetResourceState('bl_sprites') == 'missing' then
        return
    end

    for _, v in pairs(stores) do
        local point = lib.points.new({
            coords = v.coords,
            distance = 3.0,
        })

        function point:onEnter()
            currentZone = v
            if textUi then
                local prefix = "[" .. control .. "] - "
                local displayText = ""
                if currentZone.type == 'barber' then
                    displayText = "Barber Shop"
                elseif currentZone.type == 'tattoos' then
                    displayText = "Tattoo Parlor"
                elseif currentZone.type == 'clothing' then
                    displayText = "Clothing Store"
                elseif currentZone.type == 'surgeon' then
                    displayText = "Surgeon"
                end
                textUi.showTextUI(prefix .. displayText, 'left')
            end
        end

        function point:onExit()
            currentZone = nil
            if textUi then
                textUi.hideTextUI()
            end
        end

        if not textUi and not Config.UseTarget then
            sprites[#sprites + 1] = exports.bl_sprites:sprite({
                coords = v.coords,
                shape = 'hex',
                key = key,
                distance = 3.0,
                onEnter = function()
                    currentZone = v
                end,
                onExit = function()
                    currentZone = nil
                end
            })
        end
    end
end

setupZones()

local blips = {}
local function createBlips()
    for _, v in ipairs(stores) do
        if v.type ~= 'appearance' then
            local blip = AddBlipForCoord(v.coords.x, v.coords.y, v.coords.z)
            local spriteId, blipColor, blipname
            if v.type == 'barber' then
                spriteId = 71
                blipColor = 0
                blipname = 'Barber Shop'
            elseif v.type == 'clothing' then
                spriteId = 73
                blipColor = 0
                blipname = 'Clothing Store'
            elseif v.type == 'tattoos' then
                spriteId = 75
                blipColor = 4
                blipname = 'Tattoo Parlor'
            elseif v.type == 'surgeon' then
                spriteId = 102
                blipColor = 4
                blipname = 'Surgeon'
            end
            SetBlipSprite(blip, spriteId)
            SetBlipColour(blip, blipColor)
            SetBlipAsShortRange(blip, true)
            SetBlipScale(blip, 0.6)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentString(blipname)
            EndTextCommandSetBlipName(blip)
            blips[#blips + 1] = blip
        end
    end
end

createBlips()

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        for _, blip in pairs(blips) do
            RemoveBlip(blip)
        end

        if not textUi then
            for _, sprite in pairs(sprites) do
                sprite:removeSprite()
            end
        end
    end
end)

RegisterCommand('+openAppearance', function()
    if not currentZone then return end
    TriggerEvent('bl_appearance:client:useZone', currentZone.type)
end, false)

RegisterKeyMapping('+openAppearance', 'Open Appearance', 'keyboard', key)
