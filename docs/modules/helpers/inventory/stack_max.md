#### Stack Max
Returns the maximum stack size of the given item id.

**Function:** `moxlib:api/helpers/inventory/stack_max`  
**Expects:**
- `target` -- an item id

**Returns:**  
- `output` -- the maximum stack size of given item

Example:
```
/data modify storage moxlib:api/helpers/inventory/stack_max target set value "minecraft:ender_pearl"
/function moxlib:api/helpers/inventory/stack_max
/data get storage moxlib:api/helpers/inventory/stack_max
---
{
  output: 16b
}
```