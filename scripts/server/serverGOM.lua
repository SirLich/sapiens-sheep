-- Module Setup
local mod = {
	loadOrder = 1,
}

-- Requires
local logger = mjrequire "hammerstone/logging"

function mod:onload(serverGOM)
	local superSetBridge = serverGOM.setBridge

	serverGOM.setBridge = function (self_, bridge)
		superSetBridge(serverGOM, bridge)
		serverGOM.bridge = bridge

		-- Custom implementation
		serverGOM:createObjectSet("sheep")
	end

	function serverGOM:createObjectSet(objectSetID)
		serverGOM.objectSets[objectSetID] = serverGOM.bridge:createObjectSet(objectSetID)
	end
end

-- Module Return
return mod