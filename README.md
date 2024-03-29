# Moxlib
## Moxvallix's Datapack Creation Library

Moxlib aims to make Datapack creation fun and enjoyable.

With a predictable API, and a focus on data driven functionality, Moxlib serves
as an excellent foundation to any Datapack project.

Moxlib aims to run as little as possible on the tick function. Most functions
in the pack only run when they are called.

Another focus of the pack is instantaneous functions. Most of the functions
in the pack have been designed to run in a single tick, and do not use schedules,
or other timer based methods.

Moxlib is licensed under the GNU LGPL, meaning you are free to use it in your
own Datapacks, themselves under any license, but any changes you make to Moxlib must
be released under the terms of the LGPL. See [LICENSE.md](https://github.com/moxvallix/moxlib/blob/main/LICENSE.md) for full license.

Suggestions and contributions welcomed!

## The API
### Conventions
Any function outside of the `moxlib:api` folder is considered private, and is not supported.

Functions that take in data storage as an input, will read and write data at the same path
you would use to call the function.

Eg. `/function moxlib:api/helpers/block/get` writes to `/data get storage moxlib:api/helpers/block/get`

However, the `test` and `tui` modules are an exception, using more semantic language for their
respective tasks. See their individual documentations.

Functions will usually take in a `target`. Think of this as the main input. It is the piece of
data that the function will manipulate. Functions will occasionally ask for other data as well.

Functions, if they output anything, will write to `output`. Optionally, they might also record
their success to a `success` tag, although not all functions implement this.

Some functions and modules are marked as "experimental". These require [Moxlib Exp](https://github.com/moxvallix/moxlib-exp)
to function.

### Modules
The following links show the old documentation. For the work-in-progress new documentation,
visit [Moxlib Docs](https://moxlib.moxvallix.com)

#### Helpers
[See documentation...](https://github.com/moxvallix/moxlib/blob/main/docs/helpers.md)

The helpers module contains small, miscellaneous, but helpful functions.

These functions are too small and specific to warrant a module of their own.

#### Data
[See documentation...](https://github.com/moxvallix/moxlib/blob/main/docs/data.md)

The data module contains functions specifically for working with arrays of 
NBT data.

#### Test
[See documentation...](https://github.com/moxvallix/moxlib/blob/main/docs/test.md)

The test module contains functions for testing other functions.

Currently, it can only test to see that a function returned the correct value.

#### TUI
[See documentation...](https://github.com/moxvallix/moxlib/blob/main/docs/tui.md)

The TUI module allows for easy creation of data driven TUIs.

#### Math
[See documentation...](https://github.com/moxvallix/moxlib/blob/main/docs/math.md)

The Math module provides some helpful math functions.

#### Player
[See documentation...](https://github.com/moxvallix/moxlib/blob/main/docs/player.md)

The Player module exposes some helpful information about the player.

#### String
[See documentation...](https://github.com/moxvallix/moxlib/blob/main/docs/string.md)

The String module provides functions to manipulate strings.

#### Dimension
[See documentation...](https://github.com/moxvallix/moxlib/blob/main/docs/dimension.md)

Moxlib provides a dimension for storing and accessing blocks. (Requires Moxlib Exp)