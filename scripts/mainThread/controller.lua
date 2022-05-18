--- Entrypoint for the creativeMode.
-- We need to shadow the controller file to hook up the lifecycle events.
-- @author SirLich

local mod = {
	loadOrder = 1,
}

-- Requires
local logger = mjrequire "hammerstone/logging"

function mod:onload(controller)
	-- local creativeMode = mjrequire "creativeMode/creativeMode"
	-- creativeMode:init()

	logger:log("Controller Loaded (sheep)")
end

return mod