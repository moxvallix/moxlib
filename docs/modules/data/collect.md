# Collect

| Information                            |                                               |
-----------------------------------------|-----------------------------------------------|
| :material-file-document: **Type**      | [Data Function](/types/utility#data-function) |
| :material-code-braces:   **Namespace** | `moxlib:api/data/collect`                     |
| :material-minecraft:     **Versions**  | 1.15+                                         |

## Overview

Collects [Objects](/types/data#object) in `target` based on whether they [Compare](/modules/data/compare) with `key`. If they do,
they are returned in `output.match`. Otherwise, they are returned in `output.remain`.

!!! example
    In this example, `key` is set to `{id:1}`, meaning any [Object](/types/data#object) containing
    an `id` of `1` will be returned in `output.match`.

    ``` mcfunction
    data modify storage moxlib:api/data/collect target set value [{id:1,a:1},{id:1,b:1},{id:2,c:1}]
    data modify storage moxlib:api/data/collect key set value {id:1}
    function moxlib:api/data/collect
    ```
    ``` snbt title="Contents of storage moxlib:api/data/collect"
    {
      output: {
        match: [{id:1,a:1},{id:1,b:1}],
        remain: [{id:2,c:1}]
      }
      success: true
    }
    ```

## API
### Expects
- [Object Array](/types/data#array) `target`
- [Object](/types/data#object) `key`

### Returns
- [Object Array](/types/data#array) `output.match`

Objects matching the given key.

---

- [Object Array](/types/data#array) `output.remain`

Objects not matching the given key.

---

- [Boolean](/types/data#boolean) `success`

If any match was found, `true`. Otherwise, `false`.