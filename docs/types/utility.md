# Utility Types
 A utility is any datapack element Moxlib provides. The following is a list of utility types referenced in the Moxlib API.

## Dimension
`/execute in moxlib:state run tp ~ ~ ~`

Datapacks can define custom dimensions, which can have their own world generation configurations. Custom dimensions
are useful for operations that require blocks to be placed in the world, without the chance of overriding a player-placed block.

## Function
`/function moxlib:api/verify`

Functions are text files, containing Minecraft commands, that can be called from the in-game console, as well as from
other functions.

All public Moxlib functions can be found under `/api`. Any functions outside of that subfolder are internal, and private.
Calling a private function may result in undefined behaviour, and is not supported. Moxlib guarantees no consistant API for
private functions.

Functions can be called using the `/function` command, then providing the function's namespace.

### Data Function
Data functions read and write from data storage. The path to their data storage will be the same as their namespace.

Usually, the main input will be the `target` key, and the main output will be the `output` key.

### Score Function
Score functions read and write from scoreboard objectives. The objective name will be the namespace of the function, but where colons (`:`), and forward slashes (`/`), are replaced with full stops (`.`).

Example: `moxlib:api/math/random` has an objective at `moxlib.api.math.random`.

Fake players used on the scoreboard objective will be prefixed by a dollar sign (`$`).

### Entity Function
Entity functions are supposed to be executed by an entity, such as an Armor Stand, or a Player.

Use `/execute as <selector>` to run the function on the selected entities.

## Predicate
`/execute if predicate moxlib:api/player/is_sneaking`

Predicates are JSON files that describe a set of conditions that result in either a true or false state.

All public Moxlib predicates can be found under `/api`. Any predicates outside of that subfolder are internal, and private.
Private predicates may be subject to be modified, renamed or removed in any given release of Moxlib.

### Player Predicate
Player predicates only work in the context of a player. They are used to check player-specific states or actions.

### Entity Predicate
Entity predicates only work in the context of an entity. They are used to check entity-specific states or actions.

## Tags
Tags are JSON files, that are used to group various elements of the game.

### Function Tag
The `/function` command can be used to run function tags. Any function listed in the given tag will be run
upon the tag being run. This is useful for allowing custom functions to be run by specific entities, or under certain circumstances,
without having to modify Moxlib itself.