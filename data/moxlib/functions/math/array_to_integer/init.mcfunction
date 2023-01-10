data remove storage moxlib:api/math/array_to_integer output
scoreboard players set $output moxlib.math.array_to_integer 0

function moxlib:math/array_to_integer/iterate

execute store result storage moxlib:api/math/array_to_integer output int 1 run scoreboard players get $output moxlib.math.array_to_integer