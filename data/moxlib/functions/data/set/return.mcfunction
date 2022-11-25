scoreboard players set $size moxlib.data.set 0

execute store success storage moxlib:api/data/set success byte 1 run data modify storage moxlib:data/private/set current merge from storage moxlib:api/data/set data
data modify storage moxlib:api/data/set output append from storage moxlib:data/private/set current
data modify storage moxlib:api/data/set output append from storage moxlib:api/data/set target[]

function moxlib:data/set/cleanup