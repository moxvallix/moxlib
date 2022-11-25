data modify entity @s carriedBlockState.Name set from storage moxlib:api/helpers/block/to_item target
kill @s
execute as @e[type=item,limit=1,sort=nearest,distance=..1] run function moxlib:helpers/block/to_item/output