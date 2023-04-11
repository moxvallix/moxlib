# Free Slot
`moxlib:api/helpers/inventory/free_slot`

## Overview
Returns the lowest free inventory slot of the executing player.

!!! example
    ``` mcfunction
    execute as Steve run function moxlib:api/helpers/inventory/free_slot
    ```
    ``` snbt title="Output of storage moxlib:api/helpers/inventory/free_slot"
    {
      output: 5b
    }
    ```
## API
### Returns 
- [Byte](/types#byte) `output`