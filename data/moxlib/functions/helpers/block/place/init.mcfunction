execute if block ~ ~-1 ~ minecraft:air run setblock ~ ~-1 ~ moving_piston
execute align xyz run summon shulker ~ ~-1 ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",NoAI:1b,AttachFace:0b,Tags:["moxlib.helpers.block.place"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:199999980,ShowParticles:0b}]}

summon falling_block ~ ~ ~ {DropItem:false,Tags:["moxlib.helpers.block.place"]}
execute as @e[type=falling_block,limit=1,sort=nearest,tag=moxlib.helpers.block.place] run data modify entity @s BlockState set from storage moxlib:api/helpers/block/place target

schedule function moxlib:helpers/block/place/cleanup 1t