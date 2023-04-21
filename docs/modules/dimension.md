# Dimension
## A void dimension for storing blocks

??? info ":material-flask: Experimental"
    This module is Experimental, and requires **Moxlib Exp**. See [Getting Started](/setup)
    for more information.

| Information                            |                                               |
-----------------------------------------|-----------------------------------------------|
| :material-file-document: **Type**      | [Dimension](/types/utility#dimension)         |
| :material-code-braces: **Namespace**   | `moxlib:api/data/collect`                     |
| :material-minecraft: **Versions**      | 1.18+                                         |

Moxlib provides a void dimension, useful for functions that require manipulation of temporary
or permanent blocks.

The dimension can be accessed at `moxlib:state`, and the chunk at 0 0 is force-loaded.

## Conventions
Below Y 32 is reserved for permanent blocks. These are blocks that need to be accessed multiple times,
outside of a single tick.

Y 32 and above is for temporary blocks, and blocks placed there should be removed promptly after use.

### Table of Reserved Co-ordinates
If you intend on using this dimension, please **do not** use a reserved coordinate,
as that could break compatibility with other packs.

If you use Moxlib, and would like to reserve a permanent block coordinate(s) for your pack,
open an issue or pull request asking for a reservation for the table below.

| Coordinates       | Pack reserving | Used for |
|-------------------|----------------|----------|
|`5 0 5` to `5 0 10`| Moxlib         | Internal |