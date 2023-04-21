# Teleport

| Information                            |                                                   |
-----------------------------------------|---------------------------------------------------|
| :material-file-document: **Type**      | [Entity Function](/types/utility#entity-function) |
| :material-code-braces: **Namespace**   | `moxlib:api/helpers/player/teleport`              |
| :material-minecraft: **Versions**      | 1.17+                                             |

## Overview
Teleports the executing player to the given coordinates, within the same dimension.

!!! example
    ``` mcfunction
    data modify storage moxlib:api/helpers/player/teleport target set value [0,64,0]
    execute as Steve run function moxlib:api/helpers/player/teleport
    ```
    *Steve teleports to 0 64 0.*
## API
### Expects
- [Number Array](/types#array) `target`

Array of co-ordinates for the destination.