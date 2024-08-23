Config = {
    locale = 'de',
    openControl = 'E',
    previousClothing = 'illenium', -- 'illenium' | 'qb' | 'esx' | 'fivem-appearance'
    textUi = false,                -- if true, uses textUI | if false, uses sprite
    outfitItem = 'clothes',        -- Item given to the player when they want to make outfit an item to use
    EnablePedsForShops = true,
    EnablePedsForClothingRooms = true,
    EnablePedsForPlayerOutfitRooms = true,
    RCoreTattoosCompatibility = false,
    UseTarget = true,

    TargetConfig = {
        ["clothing"] = {
            model = "s_f_m_shop_high",
            scenario = "WORLD_HUMAN_STAND_MOBILE",
            icon = "fas fa-tshirt",
            label = "Open Clothing Store",
            distance = 3
        },
        ["barber"] = {
            model = "s_m_m_hairdress_01",
            scenario = "WORLD_HUMAN_STAND_MOBILE",
            icon = "fas fa-scissors",
            label = "Open Barber Shop",
            distance = 3
        },
        ["tattoo"] = {
            model = "u_m_y_tattoo_01",
            scenario = "WORLD_HUMAN_STAND_MOBILE",
            icon = "fas fa-pen",
            label = "Open Tattoo Shop",
            distance = 3
        },
        ["surgeon"] = {
            model = "s_m_m_doctor_01",
            scenario = "WORLD_HUMAN_STAND_MOBILE",
            icon = "fas fa-scalpel",
            label = "Open Surgeon",
            distance = 3
        },
    },
    Stores = {
        {
            type = "clothing",
            coords = vector4(1694.49, 4820.12, 42.06, 89.72),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false, -- false => uses the size + rotation to create the zone | true => uses points to create the zone
            showBlip = true, -- overrides the blip visibilty configured above for the group
            --targetModel = "s_m_m_doctor_01", -- overrides the target ped configured for the group
            --targetScenario = "" -- overrides the target scenario configure for the group
            points = {
                vector3(1686.9018554688, 4829.8330078125, 42.07),
                vector3(1698.8566894531, 4831.4604492188, 42.07),
                vector3(1700.2448730469, 4817.7734375, 42.07),
                vector3(1688.3682861328, 4816.2954101562, 42.07)
            }
        },
        {
            type = "clothing",
            coords = vector4(-708.90, -151.82, 37.42, 117.18),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(-719.86212158203, -147.83151245117, 37.42),
                vector3(-709.10491943359, -141.53076171875, 37.42),
                vector3(-699.94342041016, -157.44494628906, 37.42),
                vector3(-710.68774414062, -163.64665222168, 37.42)
            }
        },
        {
            type = "clothing",
            coords = vector4(-1193.65, -766.77, 17.32, 213.57),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(-1206.9552001953, -775.06304931641, 17.32),
                vector3(-1190.6080322266, -764.03198242188, 17.32),
                vector3(-1184.5672607422, -772.16949462891, 17.32),
                vector3(-1199.24609375, -783.07928466797, 17.32)
            }
        },
        {
            type = "clothing",
            coords = vector4(425.75, -809.07, 29.49, 86.64),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(419.55020141602, -798.36547851562, 29.49),
                vector3(431.61773681641, -798.31909179688, 29.49),
                vector3(431.19784545898, -812.07122802734, 29.49),
                vector3(419.140625, -812.03594970703, 29.49)
            }
        },
        {
            type = "clothing",
            coords = vector4(-165.01, -302.85, 39.73, 252.49),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(-160.82145690918, -313.85919189453, 39.73),
                vector3(-172.56513977051, -309.82858276367, 39.73),
                vector3(-166.5775604248, -292.48077392578, 39.73),
                vector3(-154.84906005859, -296.51647949219, 39.73)
            }
        },
        {
            type = "clothing",
            coords = vector4(75.19, -1390.55, 29.38, 269.60),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(81.406135559082, -1400.7791748047, 29.38),
                vector3(69.335029602051, -1400.8251953125, 29.38),
                vector3(69.754981994629, -1387.078125, 29.38),
                vector3(81.500122070312, -1387.3002929688, 29.38)
            }
        },
        {
            type = "clothing",
            coords = vector4(-820.87, -1072.54, 11.33, 212.77),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(-826.26251220703, -1082.6293945312, 11.33),
                vector3(-832.27856445312, -1072.2819824219, 11.33),
                vector3(-820.16442871094, -1065.7727050781, 11.33),
                vector3(-814.08953857422, -1076.1878662109, 11.33)
            }
        },
        {
            type = "clothing",
            coords = vector4(-1448.93, -238.13, 49.81, 48.43),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(-1448.4829101562, -226.39401245117, 49.82),
                vector3(-1439.2475585938, -234.70428466797, 49.82),
                vector3(-1451.5389404297, -248.33193969727, 49.82),
                vector3(-1460.7554931641, -240.02815246582, 49.82)
            }
        },
        {
            type = "clothing",
            coords = vector4(3.02, 6510.53, 31.88, 51.25),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(6.4955291748047, 6522.205078125, 31.88),
                vector3(14.737417221069, 6513.3872070312, 31.88),
                vector3(4.3691010475159, 6504.3452148438, 31.88),
                vector3(-3.5187695026398, 6513.1538085938, 31.88)
            }
        },
        {
            type = "clothing",
            coords = vector4(612.84, 2763.38, 42.09, 272.86),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(612.58312988281, 2747.2814941406, 42.09),
                vector3(612.26214599609, 2767.0520019531, 42.09),
                vector3(622.37548828125, 2767.7614746094, 42.09),
                vector3(623.66833496094, 2749.5180664062, 42.09)
            }
        },
        {
            type = "clothing",
            coords = vector4(1198.85, 2710.44, 38.22, 173.54),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(1188.7923583984, 2704.2021484375, 38.22),
                vector3(1188.7498779297, 2716.2661132812, 38.22),
                vector3(1202.4979248047, 2715.8479003906, 38.22),
                vector3(1202.3558349609, 2703.9294433594, 38.22)
            }
        },
        {
            type = "clothing",
            coords = vector4(-3169.53, 1042.82, 20.86, 64.74),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(-3162.0075683594, 1056.7303466797, 20.86),
                vector3(-3170.8247070312, 1039.0412597656, 20.86),
                vector3(-3180.0979003906, 1043.1201171875, 20.86),
                vector3(-3172.7292480469, 1059.8623046875, 20.86)
            }
        },
        {
            type = "clothing",
            coords = vector4(-1099.35, 2712.61, 19.11, 217.67),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(-1103.3004150391, 2700.8195800781, 19.11),
                vector3(-1111.3771972656, 2709.884765625, 19.11),
                vector3(-1100.8548583984, 2718.638671875, 19.11),
                vector3(-1093.1976318359, 2709.7365722656, 19.11)
            }
        },
        {
            type = "clothing",
            coords = vector4(126.78, -224.62, 54.56, 74.29),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(133.60948181152, -210.31390380859, 54.56),
                vector3(125.8349609375, -228.48097229004, 54.56),
                vector3(116.3140335083, -225.02020263672, 54.56),
                vector3(122.56930541992, -207.83396911621, 54.56)
            }
        },
        {
            type = "barber",
            coords = vector4(-822.02, -183.44, 37.57, 207.56),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(-825.06127929688, -182.67497253418, 37.57),
                vector3(-808.82415771484, -179.19134521484, 37.57),
                vector3(-808.55261230469, -184.9720916748, 37.57),
                vector3(-819.77899169922, -191.81831359863, 37.57)
            }
        },
        {
            type = "barber",
            coords = vector4(134.65, -1708.05, 29.29, 140.95),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(132.57008361816, -1710.5053710938, 29.29),
                vector3(138.77899169922, -1702.6778564453, 29.29),
                vector3(142.73052978516, -1705.6853027344, 29.29),
                vector3(135.49719238281, -1712.9750976562, 29.29)
            }
        },
        {
            type = "barber",
            coords = vector4(-1284.17, -1115.54, 6.99, 92.17),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(-1287.4735107422, -1115.4364013672, 6.99),
                vector3(-1277.5638427734, -1115.1229248047, 6.99),
                vector3(-1277.2469482422, -1120.1147460938, 6.99),
                vector3(-1287.4561767578, -1119.2506103516, 6.99)
            }
        },
        {
            type = "barber",
            coords = vector4(1930.96, 3728.19, 32.84, 213.57),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(1932.4931640625, 3725.3374023438, 32.84),
                vector3(1927.2720947266, 3733.7663574219, 32.84),
                vector3(1931.4379882812, 3736.5327148438, 32.84),
                vector3(1936.0697021484, 3727.2839355469, 32.84)
            }
        },
        {
            type = "barber",
            coords = vector4(1211.39, -470.83, 66.21, 72.36),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(1208.3327636719, -469.84338378906, 65.2),
                vector3(1217.9066162109, -472.40216064453, 65.2),
                vector3(1216.9870605469, -477.00939941406, 65.2),
                vector3(1206.1077880859, -473.83499145508, 65.2)
            }
        },
        {
            type = "barber",
            coords = vector4(-30.88, -151.61, 57.08, 341.91),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(-29.730783462524, -148.67495727539, 56.1),
                vector3(-32.919719696045, -158.04254150391, 56.1),
                vector3(-37.612594604492, -156.62759399414, 56.1),
                vector3(-33.30192565918, -147.31649780273, 56.1)
            }
        },
        {
            type = "barber",
            coords = vector4(-278.08, 6230.36, 31.70, 45.24),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(-280.29818725586, 6232.7265625, 30.7),
                vector3(-273.06427001953, 6225.9692382812, 30.7),
                vector3(-276.25280761719, 6222.4013671875, 30.7),
                vector3(-282.98211669922, 6230.015625, 30.7)
            }
        },
        {
            type = "tattoo",
            coords = vector4(1324.44, -1650.17, 52.28, 125.09),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(1323.9360351562, -1649.2370605469, 51.2),
                vector3(1328.0186767578, -1654.3087158203, 51.2),
                vector3(1322.5780029297, -1657.7045898438, 51.2),
                vector3(1319.2043457031, -1653.0885009766, 51.2)
            }
        },
        {
            type = "tattoo",
            coords = vector4(-1152.15, -1423.99, 4.95, 124.45),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(-1152.7110595703, -1422.8382568359, 4.95),
                vector3(-1149.0043945312, -1428.1975097656, 4.95),
                vector3(-1154.6730957031, -1431.1898193359, 4.95),
                vector3(-1157.7064208984, -1426.3433837891, 4.95)
            }
        },
        {
            type = "tattoo",
            coords = vector4(319.73, 180.88, 103.59, 249.71),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(319.28741455078, 179.9383392334, 103.59),
                vector3(321.537109375, 186.04516601562, 103.59),
                vector3(327.24526977539, 183.12303161621, 103.59),
                vector3(325.01351928711, 177.8542175293, 103.59)
            }
        },
        {
            type = "tattoo",
            coords = vector4(-3170.57, 1073.01, 20.83, 336.20),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(-3169.5861816406, 1072.3740234375, 20.83),
                vector3(-3175.4802246094, 1075.0703125, 20.83),
                vector3(-3172.2041015625, 1080.5860595703, 20.83),
                vector3(-3167.076171875, 1078.0391845703, 20.83)
            }
        },
        {
            type = "tattoo",
            coords = vector4(1862.79, 3748.54, 33.03, 35.06),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(1860.2752685547, 3750.1608886719, 33.03),
                vector3(1866.390625, 3752.8081054688, 33.03),
                vector3(1868.6164550781, 3747.3562011719, 33.03),
                vector3(1863.65234375, 3744.5034179688, 33.03)
            }
        },
        {
            type = "tattoo",
            coords = vector4(-292.19, 6199.68, 31.49, 226.97),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(-289.42239379883, 6198.68359375, 31.49),
                vector3(-294.69515991211, 6194.5366210938, 31.49),
                vector3(-298.23013305664, 6199.2451171875, 31.49),
                vector3(-294.1501159668, 6203.2700195312, 31.49)
            }
        },
        {
            type = "surgeon",
            coords = vector4(298.78, -572.81, 43.26, 114.27),
            size = vector3(4, 4, 4),
            rotation = 45,
            usePoly = false,
            points = {
                vector3(298.84417724609, -572.92205810547, 43.26),
                vector3(296.39556884766, -575.65942382812, 43.26),
                vector3(293.56317138672, -572.60675048828, 43.26),
                vector3(296.28656005859, -570.330078125, 43.26)
            }
        }
    }
}



exports('config', function()
    return Config
end)

---@param state boolean If true, hides the HUD. If false, shows the HUD.
exports('hideHud', function(state)
    -- Implement your code here
    local qbhud = GetResourceState('qb-hud') == 'started'
    if qbhud then
        -- qb hud is trash and doesnt have a hide function
        DisplayRadar(state)
    end
end)
