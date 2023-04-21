# Give

| Information                            |                                                   |
-----------------------------------------|---------------------------------------------------|
| :material-file-document: **Type**      | [Entity Function](/types/utility#entity-function) |
| :material-code-braces: **Namespace**   | `moxlib:api/helpers/inventory/give`               |
| :material-minecraft: **Versions**      | 1.17+                                             |

## Overview
Gives the executing player an item from data.

!!! example
    ``` mcfunction
    data modify storage moxlib:api/helpers/inventory/give target set value {id:"minecraft:dirt"}
    execute as Steve run function moxlib:api/helpers/inventory/give
    ```
    *Steve receives a dirt item.*
## API
### Expects
- [Item Object](/types#object) `target`