# Random

| Information                            |                                                   |
-----------------------------------------|---------------------------------------------------|
| :material-file-document: **Type**      | [Score Function](/types/utility#score-function)   |
| :material-code-braces: **Namespace**   | `moxlib:api/math/random`                          |
| :material-list-box: **Objective**      | `moxlib.api.math.random`                          |
| :material-minecraft: **Versions**      | 1.13+                                             |

## Overview
Generates a pseudo-random number. [More info](https://en.wikipedia.org/wiki/Linear_congruential_generator).

!!! example
    ``` mcfunction
    function moxlib:api/math/random
    ```
    ``` title="Output of scoreboard moxlib.api.math.random"
    $seed = -223524657
    $rng = -949726584
    ```
## API

### Expects
- [Score](/types/data#score) `$seed` (optional)

Seed to be used for generating the random number.

- [Score](/types/data#score) `$iteration` (optional)

Seed to be used for generating the random number.