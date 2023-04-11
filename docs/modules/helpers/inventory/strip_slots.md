# Strip Slots
`moxlib:api/helpers/inventory/strip_slots`

## Overview
Takes an array of items in the standard inventory format (Inventory, EnderItems, Items etc),
and removes any slot data from it. Useful for cleaning up inventory dumps, when Slot info is
not needed.

!!! example
    ``` snbt title="Inventory of Steve"
    [
      {id:"minecraft:dirt",Slot:5b,Count:38b},
      {id:"minecraft:diamond_sword",Slot:7b,Count:1b},
      {id:"minecraft:dirt",Slot:12b,Count:60b},
      {id:"minecraft:diamond_sword",Slot:16b,Count:1b},
      {id:"minecraft:dirt",Slot:18b,Count:64b}
    ]
    ```
    ``` mcfunction
    data modify storage moxlib:api/helpers/inventory/strip_slots target set from entity Steve Inventory
    function moxlib:api/helpers/inventory/strip_slots
    ```
    ``` snbt title="Output of storage moxlib:api/helpers/inventory/strip_slots"
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
## API
### Expects
- [Object Array](/types#array) `target`

Array of item objects.

### Returns
- [Object Array](/types#array) `output`

Array of item objects, without slot information.