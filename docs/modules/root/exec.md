# Exec
`moxlib:api/exec`

## Overview
Executes the command given in `target`.

!!! example
    ``` mcfunction
    data modify storage moxlib:api/exec target set value "say Hello, World!"
    function moxlib:api/exec
    ```
    *Steve says "Hello, World!"*

## API
### Expects
- [:material-function-variant: String](../../types/.md#string) `target`