scoreboard players set $output moxlib.api.math.power 1
execute if score $power moxlib.api.math.power matches 1.. run function moxlib:math/power/iterate
scoreboard players reset $power moxlib.api.math.power
scoreboard players reset $target moxlib.api.math.power