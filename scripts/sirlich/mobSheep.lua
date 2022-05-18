-- Module setup
local mobSheep = {}

-- Includes
local animationGroups = mjrequire "common/animations/animationGroups"

local mjm = mjrequire "common/mjm"
local vec3 = mjm.vec3
local logger = mjrequire "hammerstone/logging"

-- Currently a copy of the mobChicken
function mobSheep:load(mob, gameObject)
    logger:log("mobSheep:load")

    mob:addType("sheep", {
        
        deadObjectTypeIndex = gameObject.typeIndexMap.deadChicken,

        initialHealth = 0.4,
        spawnFrequency = 1.0,
        spawnDistance = mj:mToP(200.0),
        
        reactDistance = mj:mToP(25.0),
        agroDistance = mj:mToP(1.0),
        runDistance = mj:mToP(15.0),

        agroTimerDuration = 3.0,
        aggresionLevel = nil,

        pathFindingRayRadius = mj:mToP(0.2),
        pathFindingRayYOffset = mj:mToP(0.2),
        walkSpeed = mj:mToP(0.6),
        runSpeedMultiplier = 4.0,
        embedBoxHalfSize = vec3(0.1,0.1,0.1),
        
        maxSoundDistance2 = mj:mToP(100.0) * mj:mToP(100.0),
        soundVolume = 0.4,
        soundRandomBaseName = "chicken",
        soundRandomBaseCount = 4,
        soundAngryBaseName = "chickenAngry",
        soundAngryBaseCount = 1,
        deathSound = "chickenDie",
        
        animationGroupIndex = animationGroups.chicken.index,
        idleAnimations = {
            "lookRight",
            "scratch",
        },

        sleepAnimations = {
            "sit",
        },
        
        runAnimation = "run",
        deathAnimation = "die",
        
        addGameObjectInfo = {
            name = "SHEEP",
            plural = "SHEEP",
            modelName = "sheep",
            mobTypeIndex = mob.typeIndexMap.sheep,
            projectileAimHeightOffsetMeters = 0.2,
            scale = 1.0,
            hasPhysics = false,
            ignoreBuildRay = true,
            markerPositions = {
                { 
                    worldOffset = vec3(0.0, mj:mToP(0.8), 0.0)
                }
            },
        },
    })
end

-- Module return
return mobSheep

