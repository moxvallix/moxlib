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