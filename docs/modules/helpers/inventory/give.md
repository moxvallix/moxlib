# Give
`moxlib:api/helpers/inventory/give`

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