scoreboard players add @s moxlib.helpers.block.place 1
execute unless block ~ ~1 ~ minecraft:air run function moxlib:helpers/block/place/delete
execute if block ~ ~1 ~ minecraft:air unless score @s moxlib.helpers.block.place matches 10.. run schedule function moxlib:helpers/block/place/cleanup 1t