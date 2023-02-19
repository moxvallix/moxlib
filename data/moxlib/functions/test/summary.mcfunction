scoreboard players operation $percent moxlib.test = $success moxlib.test
scoreboard players operation $percent moxlib.test *= $10000 moxlib.api.math.constants
scoreboard players operation $percent moxlib.test /= $iteration moxlib.test
scoreboard players operation $percent.units moxlib.test = $percent moxlib.test
scoreboard players operation $percent.units moxlib.test /= $100 moxlib.api.math.constants
scoreboard players operation $percent.decimals moxlib.test = $percent moxlib.test
scoreboard players operation $percent.decimals moxlib.test %= $100 moxlib.api.math.constants

tellraw @s [{"text":"[","color":"gold","extra":[{"score":{"name":"$success","objective":"moxlib.test"},"color":"green","extra":[{"text":"/","extra":[{"score":{"name":"$iteration","objective":"moxlib.test"}}]}]},{"text":"]"}]},{"text":"(","color":"gold","extra":[{"score":{"name":"$percent.units","objective":"moxlib.test"},"color":"aqua","extra":[{"text":"."},{"score":{"name":"$percent.decimals","objective":"moxlib.test"}},{"text":"%"}]},{"text":")"},{"text":" tests passing.","color":"white"}]}]