# Set

| Information                          |                                            |
---------------------------------------|--------------------------------------------|
| :material-file-document: **Type**    | [Data Function](/types/tool#data-function) |
| :material-code-braces: **Namespace** | `moxlib:api/data/set`                      |
| :material-minecraft: **Versions**    | 1.15+                                      |

## Overview
If a record in `target` successfully [Compares](/modules/data/compare) with `key`, that record has `data` merged into it.

If no record is found, a new record is created, and appended to `target`, merging `key` and `data` together.

The modified `target` is returned as `output`.

!!! example
    In this example, the record in `target`, `{id:2,b:1}`, is updated to have a value of `{b:2}`.
    ``` mcfunction
    data modify storage moxlib:api/data/set target set value [{id:1,a:1},{id:2,b:1},{id:3,c:1}]
    data modify storage moxlib:api/data/set key set value {id:2}
    data modify storage moxlib:api/data/set data set value {b:2}
    function moxlib:api/data/set
    ```
    ``` snbt title="Output of storage moxlib:api/data/set"
    {
      output: [{id:1,a:1},{id:2,b:2},{id:3,c:1}],
      success: true
    }
    ```

## API
### Expects
- [Object Array](/types#array) `target`
- [Object](/types#object) `key`
- [Object](/types#object) `data`

### Returns
- [Object Array](/types#array) `output`

The same array as `target`, but containing the new or updated record.

---

- [Boolean](/types#boolean) `success`

If modification was successful, `true`. Otherwise, `false`.