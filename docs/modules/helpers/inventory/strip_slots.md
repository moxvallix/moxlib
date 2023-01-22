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