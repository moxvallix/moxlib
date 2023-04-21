# Get

| Information                            |                                               |
-----------------------------------------|-----------------------------------------------|
| :material-file-document: **Type**      | [Data Function](/types/utility#data-function) |
| :material-code-braces: **Namespace**   | `moxlib:api/helpers/block/get`                |
| :material-minecraft: **Versions**      | 1.15+ (with compatibility pack)               |

## Overview
Gets the `id`, as well as other information, on the block at ~ ~ ~.

Retrieving the `id` only works on vanilla blocks.

!!! example
    In this example, there is an empty chest at `37 64 190`, the information
    of which is returned in `output`.
    ``` mcfunction
    execute positioned 37 64 190 run function moxlib:api/helpers/block/get
    ```
    ``` snbt title="Output of moxlib:api/helpers/block/get"
    {
      output:{
        block: "minecraft:chest",
        group: "a_to_f",
        letter: "c",
        data: {
          id: "minecraft:chest",
          x: 37,
          y: 64,
          z: 190,
          Items: []
        }
      }
    }
    ```

## API
### Returns
- [String](/types#string) `block`

Namespaced id of the block.

---

- [String](/types#string) `group`

Group this block is in, based on the first letter of it's id, without being namespaced.

Possible groups are: `a_to_f`, `g_to_l`, `m_to_r`, `s_to_z`.

---

- [String](/types#string) `letter`

First letter of the block's id, without being namespaced.

---

- [Object](/types#object) `data` 

Block-data of the block, if present.