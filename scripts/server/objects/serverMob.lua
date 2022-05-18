-- Module Setup
local mod = {
	loadOrder = 1,
}

-- Requires
local logger = mjrequire "hammerstone/logging"
local serverSheep = mjrequire "sirlich/serverSheep"


function mod:onload(serverMob)
	-- Shadow init
	local superInit = serverMob.init
	serverMob.init = function (self_, serverGOM_, serverWorld_, serverSapien_, planManager_)
		superInit(serverMob, serverGOM_, serverWorld_, serverSapien_, planManager_)

		-- Custom implementation
		serverSheep:init(serverGOM_, serverWorld_, serverMob)
	end
end

-- Module Return
return mod