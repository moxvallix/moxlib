#### Teleport
Teleports the executing player to the given coordinates, within the same dimension.

**Function:** `moxlib:api/helpers/player/teleport`  
**Expects:** an array of coordinates  
**Returns:** no output, teleports player

Example:
```
/data modify storage moxlib:api/helpers/player/teleport target set value [0,64,0]
/execute as Steve run function moxlib:api/helpers/player/teleport
---
*Steve teleports to 0 64 0.*
```