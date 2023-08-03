# Stack Max
`moxlib:api/helpers/inventory/stack_max`

## Overview
Returns the maximum stack size of the given item id.

!!! example
    ``` mcfunction
    data modify storage moxlib:api/helpers/inventory/stack_max target set value "minecraft:ender_pearl"
    function moxlib:api/helpers/inventory/stack_max
    ```
    ``` snbt title="Output of storage moxlib:api/helpers/inventory/stack_max"
    {
      output: 16b
    }
    ```
## API
### Expects
- [String](/types#string) `target`

A namespaced item id.

### Returns
- [Byte](/types#byte) `output`

The maximum stack size of the given item.