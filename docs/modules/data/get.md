# Get

| Information                          |                                               |
---------------------------------------|-----------------------------------------------|
| :material-file-document: **Type**    | [Data Function](/types/utility#data-function) |
| :material-code-braces: **Namespace** | `moxlib:api/data/get`                         |
| :material-minecraft: **Versions**    | 1.15+                                         |

## Overview
Retrieves the first [Object](/types/data#object) in `target` to successfully [Compare](/modules/data/compare) with `key`.

!!! example
    In this example, `key` is set to `{id:2}`. As such, it returns `{id:2,b:1}` to `output`.
    ``` mcfunction
    data modify storage moxlib:api/data/get target set value [{id:1,a:1},{id:2,b:1},{id:3,c:1}]
    data modify storage moxlib:api/data/get key set value {id:2}
    function moxlib:api/data/get
    ```
    ``` snbt title="Output of storage moxlib:api/data/get"
    {
      output: {id:2,b:1},
      success: true
    }
    ```

## API
### Expects:
- [Object Array](/types#array) `target`
- [Object](/types#object) `key`

### Returns
- [Object](/types#object) `output`

The first [Object](/types#object) to [Compare](/modules/data/compare) with `key`, if any.

---

- [Boolean](/types#boolean) `success`

If an object could be found, `true`. Otherwise, `false`.