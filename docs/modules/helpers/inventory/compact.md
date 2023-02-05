# Compact
`moxlib:api/helpers/inventory/compact`

## Overview
Takes an array of items in the standard inventory format (Inventory, EnderItems, Items etc),
and compacts the data, following correct stack sizes and such.

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
    data modify storage moxlib:api/helpers/inventory/compact target set from entity Steve Inventory
    function moxlib:api/helpers/inventory/compact
    ```
    ``` snbt title="Output of storage moxlib:api/helpers/inventory/compact"
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
## API
### Expects
- [Object Array](/types#array) `target`

### Returns
- [Object Array](/types#array) `output`

Inventory data 