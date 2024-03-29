# Dimension
## A void dimension for storing blocks

**Experimental:** Requires [Moxlib Exp](https://github.com/moxvallix/moxlib-exp).

Moxlib provides a void dimension, useful for functions that require manipulation of temporary
or permanent blocks.

The dimension can be accessed at `moxlib:state`, and the chunk at 0 0 is forceloaded.

## Conventions
Below Y 32 is reserved for permanent blocks. These are blocks that need to be accessed multiple times,
outside of a single tick.

Y 32 and above is for temporary blocks, and blocks placed there should be removed promptly after use.

### Table of Reserved Co-ordinates
If you are using Moxlib, please **do not** use a reserved coordinate, in `moxlib:state`,
as that could break compatibility with other packs.

If you use Moxlib, and would like to reserve a permanent block coordinate(s) for your pack,
open an issue or pull request asking for a reservation for the table below.

| Coordinates       | Pack reserving | Used for |
|-------------------|----------------|----------|
|`5 0 5` to `5 0 10`| Moxlib         | Internal |