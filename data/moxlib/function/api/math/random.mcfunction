execute if score $seed moxlib.api.math.random matches 0 store result score $seed moxlib.api.math.random run data get entity @e[limit=1,sort=random] UUID[1]
execute if score $rng moxlib.api.math.random matches 0 store result score $rng moxlib.api.math.random run scoreboard players get $seed moxlib.api.math.random

scoreboard players add $iteration moxlib.api.math.random 1
scoreboard players operation $rng moxlib.api.math.random *= $75 moxlib.api.math.constants
scoreboard players operation $rng moxlib.api.math.random += $74 moxlib.api.math.constants
scoreboard players operation $rng moxlib.api.math.random += $iteration moxlib.api.math.random

scoreboard players operation $rand_2 moxlib.api.math.random = $rng moxlib.api.math.random
scoreboard players operation $rand_2 moxlib.api.math.random %= $2 moxlib.api.math.constants

scoreboard players operation $rand_3 moxlib.api.math.random = $rng moxlib.api.math.random
scoreboard players operation $rand_3 moxlib.api.math.random %= $3 moxlib.api.math.constants

scoreboard players operation $rand_4 moxlib.api.math.random = $rng moxlib.api.math.random
scoreboard players operation $rand_4 moxlib.api.math.random %= $4 moxlib.api.math.constants

scoreboard players operation $rand_5 moxlib.api.math.random = $rng moxlib.api.math.random
scoreboard players operation $rand_5 moxlib.api.math.random %= $5 moxlib.api.math.constants

scoreboard players operation $rand_6 moxlib.api.math.random = $rng moxlib.api.math.random
scoreboard players operation $rand_6 moxlib.api.math.random %= $6 moxlib.api.math.constants

scoreboard players operation $rand_7 moxlib.api.math.random = $rng moxlib.api.math.random
scoreboard players operation $rand_7 moxlib.api.math.random %= $7 moxlib.api.math.constants

scoreboard players operation $rand_8 moxlib.api.math.random = $rng moxlib.api.math.random
scoreboard players operation $rand_8 moxlib.api.math.random %= $8 moxlib.api.math.constants

scoreboard players operation $rand_9 moxlib.api.math.random = $rng moxlib.api.math.random
scoreboard players operation $rand_9 moxlib.api.math.random %= $9 moxlib.api.math.constants

scoreboard players operation $rand_10 moxlib.api.math.random = $rng moxlib.api.math.random
scoreboard players operation $rand_10 moxlib.api.math.random %= $10 moxlib.api.math.constants

scoreboard players operation $rand_16 moxlib.api.math.random = $rng moxlib.api.math.random
scoreboard players operation $rand_16 moxlib.api.math.random %= $16 moxlib.api.math.constants

scoreboard players operation $rand_32 moxlib.api.math.random = $rng moxlib.api.math.random
scoreboard players operation $rand_32 moxlib.api.math.random %= $32 moxlib.api.math.constants

scoreboard players operation $rand_48 moxlib.api.math.random = $rng moxlib.api.math.random
scoreboard players operation $rand_48 moxlib.api.math.random %= $48 moxlib.api.math.constants

scoreboard players operation $rand_64 moxlib.api.math.random = $rng moxlib.api.math.random
scoreboard players operation $rand_64 moxlib.api.math.random %= $64 moxlib.api.math.constants

scoreboard players operation $rand_80 moxlib.api.math.random = $rng moxlib.api.math.random
scoreboard players operation $rand_80 moxlib.api.math.random %= $80 moxlib.api.math.constants

scoreboard players operation $rand_96 moxlib.api.math.random = $rng moxlib.api.math.random
scoreboard players operation $rand_96 moxlib.api.math.random %= $96 moxlib.api.math.constants

scoreboard players operation $rand_112 moxlib.api.math.random = $rng moxlib.api.math.random
scoreboard players operation $rand_112 moxlib.api.math.random %= $112 moxlib.api.math.constants

scoreboard players operation $rand_128 moxlib.api.math.random = $rng moxlib.api.math.random
scoreboard players operation $rand_128 moxlib.api.math.random %= $128 moxlib.api.math.constants