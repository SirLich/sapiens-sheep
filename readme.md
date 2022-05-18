# Sapiens Sheep Mod

This is a test mod, which simply adds a sheep to the game. The main purpose is to test the viability of adding entities into Sapiens, and also finding any places where lack of exposure prevents me from doing it as a pure mode (without source code edits).

## Issues

This section will simply list the places where I became blocked, and resorted to source code edits.

### modManager.lua

Server side loading for mods appears to be broken. I fixed this by directly editing `modManager.lua` to allow my server mods to load.

259: `if (enabledAppMods and enabledAppMods[modDirName]) or modDirName == "sheep" or modDirName == "hammerstone-framework" then`

### Model Loading

From what I can tell, placing a `glb` file into my mods model folder did not work. At all. It required me to move it into the actual game files. Needs more investigation on my side.


### planHelper.lua

I haven't done a full investigation here. It's likely I can fix this some other way. But for now, I quickly added my code into the Plan Helper:

1163: `[gameObject.types.sheep.index] = basicHuntingInfo`


### mob.lua

This is another point where I'm pretty sure I can get it working. My initial attempts though were crashing Sapiens with no logging, and a blackscreen-freeze. I'm not sure what's wrong here.

61: `mobSheep:load(mob, gameObject)`

### clientMob.lua

I think this is almost definitely not something I can handle without src code edits.

56: `[mob.types.sheep.index] = clientSheep`


