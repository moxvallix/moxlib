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