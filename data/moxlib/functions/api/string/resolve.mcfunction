# Entity: babd0a7e-aa21-473b-a065-1495066cb515
summon armor_stand ~ ~ ~ {UUID:[I;-1162016130,-1440659653,-1603988331,107787541],HandItems:[{id:"minecraft:debug_stick",Count:1b}],Marker:1b,Invisible:1b}

execute as @s run item modify entity babd0a7e-aa21-473b-a065-1495066cb515 weapon.mainhand moxlib:string/resolve
data modify storage moxlib:api/string/resolve output set from entity babd0a7e-aa21-473b-a065-1495066cb515 HandItems[0].tag.display.Name

kill babd0a7e-aa21-473b-a065-1495066cb515