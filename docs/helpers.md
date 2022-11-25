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