# Free Slot

| Information                            |                                                   |
-----------------------------------------|---------------------------------------------------|
| :material-file-document: **Type**      | [Entity Function](/types/utility#entity-function) |
| :material-code-braces: **Namespace**   | `moxlib:api/helpers/inventory/free_slot`          |
| :material-minecraft: **Versions**      | 1.15+                                             |

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