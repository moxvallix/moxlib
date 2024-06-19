execute if score @s moxlib.api.player.hotbar > @s moxlib.player.hotbar.last run scoreboard players set @s moxlib.api.player.scroll 1
execute if score @s moxlib.api.player.hotbar < @s moxlib.player.hotbar.last run scoreboard players set @s moxlib.api.player.scroll -1
execute if score @s moxlib.api.player.hotbar matches ..2 if score @s moxlib.player.hotbar.last matches 6.. run scoreboard players set @s moxlib.api.player.scroll 1
execute if score @s moxlib.api.player.hotbar matches 6.. if score @s moxlib.player.hotbar.last matches ..2 run scoreboard players set @s moxlib.api.player.scroll -1

execute if score @s moxlib.api.player.hotbar = @s moxlib.player.hotbar.last run scoreboard players set @s moxlib.api.player.scroll 0

scoreboard players operation @s moxlib.player.hotbar.last = @s moxlib.api.player.hotbar