# Entity: 87d62d53-89ed-4a3a-85d6-f02d1d0188f5
summon armor_stand ~ ~ ~ {UUID:[I;-2016006829,-1980937670,-2049511379,486639861],HandItems:[{id:"minecraft:player_head",Count:1b}],Marker:1b,Invisible:1b}
item modify entity 87d62d53-89ed-4a3a-85d6-f02d1d0188f5 weapon.mainhand moxlib:helpers/player/head
data modify storage moxlib:api/helpers/player/head output set from entity 87d62d53-89ed-4a3a-85d6-f02d1d0188f5 HandItems[0]
kill 87d62d53-89ed-4a3a-85d6-f02d1d0188f5