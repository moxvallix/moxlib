execute store result score @s moxlib.api.player.hotbar run data get entity @s SelectedItemSlot

execute unless predicate moxlib:api/player/has_scrolled run scoreboard players set @s moxlib.api.player.scroll 0
execute if predicate moxlib:api/player/has_scrolled run function moxlib:player/scroll/scrolled