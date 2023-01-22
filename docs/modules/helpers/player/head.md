#### Head
Gets the executing player's head as an item, and stores it in `output`.

**Function:** `moxlib:api/helpers/player/head`  
**Expects:** to be executed as a player  
**Returns:**
- `output` -- a player_head item with the player's head data

Example:
```
/execute as Steve run function moxlib:api/helpers/player/head
/data get storage moxlib:api/helpers/player/head
---
{
  output: {
    id:"minecraft:player_head",
    tag:{
      SkullOwner: {
        Id:[I; <uuid here...>],
        Properties:{
          textures:[
            {
              Value:"<base64 texture here...>",
              Signature:"<base64 signature here...>"
            }
          ]
        },
        Name: "Steve"
      }
    },
    Count:1b
  }
}
```