execute if predicate moxlib:api/player/has_died run function #moxlib:api/player/on_death
execute if predicate moxlib:api/player/has_killed run function #moxlib:api/player/on_kill
execute if predicate moxlib:api/player/has_killed_player run function #moxlib:api/player/on_player_kill

scoreboard players reset @s moxlib.player.died
scoreboard players reset @s moxlib.player.killed
scoreboard players reset @s moxlib.player.killed_player