execute store result score $power moxlib.math.array_to_integer run data get storage moxlib:api/math/array_to_integer target
scoreboard players remove $power moxlib.math.array_to_integer 1
execute store result score $current moxlib.math.array_to_integer run data get storage moxlib:api/math/array_to_integer target[0]
execute if score $current moxlib.math.array_to_integer matches ..-1 run scoreboard players operation $current moxlib.math.array_to_integer *= $-1 moxlib.api.math.constants

scoreboard players set $target moxlib.api.math.power 10
scoreboard players operation $power moxlib.api.math.power = $power moxlib.math.array_to_integer
function moxlib:api/math/power

scoreboard players operation $current moxlib.math.array_to_integer *= $output moxlib.api.math.power
scoreboard players operation $output moxlib.math.array_to_integer += $current moxlib.math.array_to_integer

data remove storage moxlib:api/math/array_to_integer target[0]
execute if score $power moxlib.math.array_to_integer matches 1.. run function moxlib:math/array_to_integer/iterate