local menus = {
	appearance = {
		tabs = { "heritage", "hair", "clothes", "accessories", "face", "makeup", "outfits", "tattoos" },
		allowExit = true,
	},

	clothing = {
		tabs = { "clothes", "accessories", "outfits" },
		allowExit = true,
	},

	barber = {
		tabs = { "hair", "makeup" },
		allowExit = true,
	},

	surgeon = {
		tabs = { "heritage", "face" },
		allowExit = true,
	},

	tattoos = {
		tabs = { "tattoos" },
		allowExit = true,
	},

	outfits = {
		tabs = { "outfits" },
		allowExit = true,
	},
	jobs = {
		tabs = { "clothes", "accessories", "outfits" },
		allowExit = true,
	},
}

exports("menus", function()
	return menus
end)
