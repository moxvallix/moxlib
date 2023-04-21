# To Item

| Information                            |                                               |
-----------------------------------------|-----------------------------------------------|
| :material-file-document: **Type**      | [Data Function](/types/utility#data-function) |
| :material-code-braces: **Namespace**   | `moxlib:api/helpers/block/to_item`            |
| :material-minecraft: **Versions**      | 1.15+                                         |

## Overview

Converts a block's `id`, to it's item equivalent, if possible.

!!! example
    ``` mcfunction
    data modify storage moxlib:api/helpers/block/to_item target set value "minecraft:redstone_wire"
    function moxlib:api/helpers/block/to_item
    ```
    ``` snbt title="Output of storage moxlib:api/helpers/block/to_item"
    {
      output: "minecraft:redstone_dust"
    }
    ```

## API
### Expects
- [String](/types#string) `target`

A namespaced block id.

### Returns
- [String](/types#string) `output`

Namespaced `id` of the item equivalent of `target` block.
