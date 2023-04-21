# Compare

| Information                          |                                               |
---------------------------------------|-----------------------------------------------|
| :material-file-document: **Type**    | [Data Function](/types/utility#data-function) |
| :material-code-braces: **Namespace** | `moxlib:api/data/compare`                     |
| :material-minecraft: **Versions**    | 1.15+                                         |

## Overview
Returns an `output` of true if `target` contains all of the same key/value pairings as `key`.

!!! example
    In this example, `key` is set to `{id:1b}`, which is also contained in `target`. As such,
    `output` returns true.
    ``` mcfunction
    data modify storage moxlib:api/data/compare target set value {id:1b,data:"Hello"}
    data modify storage moxlib:api/data/compare key set value {id:1b}
    function moxlib:api/data/compare
    ```
    ``` snbt title="Output of storage moxlib:api/data/compare"
    {
      output: true,
      success: true
    }
    ```

## API
### Expects
- [Object](/types#object) `target`
- [Object](/types#object) `key`

### Returns
- [Boolean](/types#boolean) `output`

If `target` contains `key`, `true`. Otherwise, `false`.

---

- [Boolean](/types#boolean) `success`

If Comparison ran successfully, `true`. Otherwise, `false`.