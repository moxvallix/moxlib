# Helpers
## A collection of helpful functions

Moxlib contains many useful helper functions. These can be found in the `moxlib:api/helpers`
folder. Any functions outside of this folder are private.

These functions follow the standard interface. `target` usually contains your inputs, and the functions will
likely provide data to `output`.

The locations of this data, for each function, is the same path you would use to call the function.

## API
### Block functions
#### Get
Gets information on the block at ~ ~ ~.

**Function:** `moxlib:api/helpers/block/get`  
**Expects:** No input required  
**Returns:**
  - **block:** name of the block
  - **group:** letter group of the block
  - **letter:** first letter of the block's name
  - **data:** blockdata of the block, if it has data

Example:
```
/function moxlib:api/helpers/block/get
/data get storage moxlib:api/helpers/block/get
---
{
  output:{
    block: "minecraft:chest",
    group: "a_to_f",
    letter: "c",
    moxlib:data/ {
      id: "minecraft:chest",
      x: 0,
      y: 64,
      z: 0,
      Items: []
    }
  }
}
```

#### To Item
Converts a block's name, to it's item equivalent, if possible.

**Function:** `moxlib:api/helpers/block/to_item`  
**Expects:** a namespaced block name string  
**Returns:**
  - **id:** namespaced item name
  - **Count:** item count of 1b

Example:
```
/data modify storage moxlib:api/helpers/block/to_item target set value "minecraft:redstone_wire"
/function moxlib:api/helpers/block/to_item
/data get storage moxlib:api/helpers/block/to_item
---
{
  output:{
    id: "minecraft:redstone_dust",
    Count: 1b
  }
}
```

### Data Functions
#### Type
Returns the type of the given data.

**Function:** `moxlib:api/helpers/data/type`  
**Expects:** any nbt data  
**Returns:**
| target             | output   |
| ------------------ | -------- |
| {a:1,b:2}          | "object" |
| ["a","b"]          | "array"  |
| "hello"            | "string" |
| '{"text":"hello"}' | "json"*  |
| 12b                | "byte"   |
| 132s               | "short"  |
| 420                | "integer"|
| 487l               | "long"   |
| 43.48f             | "float"  |
| 684.38d            | "double" |

**JSON input must be a valid [Raw JSON Text](https://minecraft.fandom.com/wiki/Raw_JSON_text_format) component to be detected.*

Example:
```
/data modify storage moxlib:api/helpers/data/type target set value ["hello","world"]
/function moxlib:api/helpers/data/type
/data get storage moxlib:api/helpers/data/type
---
{
  output: "array"
}
```

#### Calculate Pages
Calculates the amount of pages a given array of data contains.

**Function:** `moxlib:api/helpers/data/calculate_pages`  
**Expects:**
- `target` -- array of data to calculate pages from, or number as count of data
- `count` -- number of data records per page

**Returns:**
- `output` -- amount of pages

Example:
```
/data modify storage moxlib:api/helpers/data/calculate_pages target set value [1,2,3,4,5,6,7,8,9]
/data modify storage moxlib:api/helpers/data/calculate_pages count set value 3
/function moxlib:api/helpers/data/calculate_pages
/data get storage moxlib:api/helpers/data/calculate_pages
---
{
  output: 3
}
```

### Inventory Functions
#### Free Slot
Returns the lowest free slot of the executing player.

**Function:** `moxlib:api/helpers/inventory/free_slot`  
**Expects:** no input required.  
**Returns:** a byte representing the lowest free slot

Example:
```
/execute as Steve run function moxlib:api/helpers/inventory/free_slot
/data get storage moxlib:api/helpers/inventory/free_slot
---
{
  output: 5b
}
```

#### Give
Gives the executing player an item from data.

**Function:** `moxlib:api/helpers/inventory/give`  
**Expects:** valid item nbt  
**Returns:** no output, modifies player inventory

Example:
```
/data modify storage moxlib:api/helpers/inventory/give target set value {id:"minecraft:dirt"}
/execute as Steve run function moxlib:api/helpers/inventory/give
---
*Steve receives a dirt item.*
```

#### Compact
Takes an array of items in the standard inventory format (Inventory, EnderItems, Items etc),
and compacts the data, following correct stack sizes and such.

**Function:** `moxlib:api/helpers/inventory/compact`  
**Expects:**
- `target` -- an array of items

**Returns:**  
- `output` -- compacted array of items

Example:
```
/data modify storage moxlib:api/helpers/inventory/compact target set from entity @s Inventory
---
# Inventory contains
[
  {id:"minecraft:dirt",Slot:5b,Count:38b},
  {id:"minecraft:diamond_sword",Slot:7b,Count:1b},
  {id:"minecraft:dirt",Slot:12b,Count:60b},
  {id:"minecraft:diamond_sword",Slot:16b,Count:1b},
  {id:"minecraft:dirt",Slot:18b,Count:64b}
]
---
/function moxlib:api/helpers/inventory/compact
/data get storage moxlib:api/helpers/inventory/compact
---
{
  output: [
    {id:"minecraft:dirt",Count:64b},
    {id:"minecraft:dirt",Count:64b},
    {id:"minecraft:dirt",Count:34b},
    {id:"minecraft:diamond_sword",Count:1b},
    {id:"minecraft:diamond_sword",Count:1b}
  ]
}
```

#### Strip Slots
Takes an array of items in the standard inventory format (Inventory, EnderItems, Items etc),
and removes any slot data from it. Useful for cleaning up inventory dumps, when Slot info is
not needed.

**Function:** `moxlib:api/helpers/inventory/strip_slots`  
**Expects:**
- `target` -- an array of items  
**Returns:**  
- `output` -- an array of items, minus slot information

Example:
```
/data modify storage moxlib:api/helpers/inventory/strip_slots target set from entity @s Inventory
---
# Inventory contains
[
  {id:"minecraft:dirt",Slot:5b,Count:38b},
  {id:"minecraft:diamond_sword",Slot:7b,Count:1b},
  {id:"minecraft:dirt",Slot:12b,Count:60b},
  {id:"minecraft:diamond_sword",Slot:16b,Count:1b},
  {id:"minecraft:dirt",Slot:18b,Count:64b}
]
---
/function moxlib:api/helpers/inventory/strip_slots
/data get storage moxlib:api/helpers/inventory/strip_slots
---
{
  output: [
    {id:"minecraft:dirt",Count:38b},
    {id:"minecraft:diamond_sword",Count:1b},
    {id:"minecraft:dirt",Count:60b},
    {id:"minecraft:diamond_sword",Count:1b},
    {id:"minecraft:dirt",Count:64b}
  ]
}
```

### Player Functions
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

### Reset
Resets the lock, in the unlikely case it gets stuck.

**Function:** `moxlib:api/helpers/reset`  
**Expects:** No value expected  
**Returns:** No value returned