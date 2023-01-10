# Math
## A collection of useful math formulas

Moxlib provides some useful math functions in this module.

Instead of the usual data API, this module largely uses a scoreboard based API.
It is quite similar. The input value will usually be the fake player `$target`.
Output, however, depends on the function.

The objective path follows a similar convention to the data path, but using `.` instead.
Eg. `moxlib:api/math/random` writes to `moxlib.api.math.random`.

## API
### Random
Generates random numbers.

**Function:** `moxlib:api/math/random`  
**Objective:** `moxlib.api.math.random`  
**Expects:**
- `$seed` -- optional, can set that fake player to be the seed of the number generator
**Returns:**
- `$rng` -- large random number
- `$rand_n` -- random number between 0 and n-1
  - Valid numbers are:  
  [2, 3, 4, 5, 6, 7, 8, 9, 10, 16, 32, 48, 64, 80, 96, 112, 128]

Example:
```
/function moxlib:api/math/random
/scoreboard players get $rand_8 moxlib.api.math.random
---
6
```

### Constants
Provides a series of pre-set values in a scoreboard.

**Function:** No function required  
**Objective:** `moxlib.api.math.constants`  
**Expects:** No value expected  
**Returns:**
- `$n` -- fake player, with value assigned same as it's name
  - valid numbers are:  
  [-1..100, 120..1000 at intervals of 20, 1023..2147483647 2^n-1 and 2^n]

Example:
```
/scoreboard players get $2047 moxlib.api.math.constants
---
2047
```

### Tropical Fish Variant
Calculates a tropical fish's different variant values based on it's variant number.

**Function:** `moxlib:api/math/misc/fish`  
**Objective:** `moxlib.api.math.misc.fish`  
**Expects:**
- `$target` -- set this to the fish's variant number
**Returns:**
- `$size` -- size of the fish, either 0 or 1
- `$pattern` -- pattern of the fish
- `$base_color` -- base color of the fish
- `$pattern_color` -- pattern color of the fish


Example:
```
/scoreboard players set $target moxlib.api.math.misc.fish 67764993
/function moxlib:api/math/misc/fish
/scoreboard players get $size moxlib.api.math.misc.fish
/scoreboard players get $pattern moxlib.api.math.misc.fish
/scoreboard players get $base_color moxlib.api.math.misc.fish
/scoreboard players get $pattern_color moxlib.api.math.misc.fish
---
$size = 1
$pattern = 3
$base_color = 10
$pattern_color = 4
```

### Power
Calculates `$target` to the power of `$power`. `$power` is expected to be positive.

**Function:** `moxlib:api/math/power`  
**Objective:** `moxlib.api.math.power`  
**Expects:**
- `$target` -- set this as the target number
- `$power` -- set this as what `$target` should be to the power of
**Returns:**
- `$output` -- `$target` put to the power of `$power`

Example:
```
/scoreboard players set $target moxlib.api.math.power 5
/scoreboard players set $power moxlib.api.math.power 2
/function moxlib:api/math/power
/scoreboard players get $output moxlib.api.math.power
---
$output = 25
```

### Array to Integer
Turns an array of numbers into a single integer. Perfect for making a virtual calculator,
where you need to turn an array of user inputs, into a usable number.

Unlike other functions in this module, this function uses data storage, and thus,
the standard function API.

**Function:** `moxlib:api/math/array_to_integer`  
**Expects:**
- `target` -- an array of numbers (single digit, 0-9)
**Returns:**
- `output` -- an integer, created from the given numbers

Example:
```
/data modify storage moxlib:api/math/array_to_integer target set value [1,9,8,7]
/function moxlib:api/math/array_to_integer
/data get storage moxlib:api/math/array_to_integer
---
{
  output: 1987
}
```