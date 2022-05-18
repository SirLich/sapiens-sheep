local mod = {
	loadOrder = 1
}

-- Requires
local logger = mjrequire "hammerstone/logging"


function mod:onload(server)
	logger:log("Server Loaded")
end

return mod