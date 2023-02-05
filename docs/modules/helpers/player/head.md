# Head
`moxlib:api/helpers/player/head`

## Overview
Gets the executing player's head as an item, and stores it in `output`.

!!! example
    ``` mcfunction
    execute as Steve run function moxlib:api/helpers/player/head
    ```
    ``` snbt title="Output of storage moxlib:api/helpers/player/head"
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
## API
### Returns
- [Item Object](/types#object) `output`

A player_head item object, with the player's head data. [More info](https://minecraft.fandom.com/wiki/Head#Item_data).