-- Module Setup
local mod = {
	loadOrder = 1,
}

-- Requires
local logger = mjrequire "hammerstone/logging"
local mobSheep = mjrequire "sirlich/mobSheep"

function mod:onload(mob)
	-- Shadow init

	local superLoad = mob.load
	mob.load = function (self_, gameObject)
		logger:log("Mob.lua Loaded")
		-- -- Load out custom mobs first, before super (so that valid types is correct)
		-- mobSheep:load(mob, gameObject)

		superLoad(mob, gameObject)
	end
end

-- Module Return
return mod