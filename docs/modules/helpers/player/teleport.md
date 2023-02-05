# Teleport
`moxlib:api/helpers/player/teleport`

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