# Entity: bca68a42-2e22-4448-aee9-bd126eb81635
tag @a remove moxlib.api.player.from_uuid

summon interaction ~ ~500 ~ {UUID:[I;-1129936318,773997640,-1360413422,1857558069],interaction:{player:[I;0,0,0,0],timestamp:0L}}
data modify entity bca68a42-2e22-4448-aee9-bd126eb81635 interaction.player set from storage moxlib:api/player/from_uuid target

execute as bca68a42-2e22-4448-aee9-bd126eb81635 on target run tag @s add moxlib.api.player.from_uuid

kill bca68a42-2e22-4448-aee9-bd126eb81635