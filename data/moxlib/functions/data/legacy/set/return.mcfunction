scoreboard players set $size moxlib.data.set 0

execute store success storage moxlib:api/data/legacy/set success byte 1 run data modify storage moxlib:data/private/set current merge from storage moxlib:api/data/legacy/set data
data modify storage moxlib:api/data/legacy/set output append from storage moxlib:data/private/set current
data modify storage moxlib:api/data/legacy/set output append from storage moxlib:api/data/legacy/set target[]

function moxlib:data/legacy/set/cleanup