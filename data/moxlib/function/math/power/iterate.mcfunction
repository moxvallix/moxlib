scoreboard players remove $power moxlib.api.math.power 1
scoreboard players operation $output moxlib.api.math.power *= $target moxlib.api.math.power
execute if score $power moxlib.api.math.power matches 1.. run function moxlib:math/power/iterate