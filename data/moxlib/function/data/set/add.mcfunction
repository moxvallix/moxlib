execute store success storage moxlib:api/data/set success byte 1 run data modify storage moxlib:api/data/set output append from storage moxlib:data/private/set current

data modify storage moxlib:data/private/set temp set from storage moxlib:api/data/set key
data modify storage moxlib:data/private/set temp merge from storage moxlib:api/data/set data
data modify storage moxlib:api/data/set output append from storage moxlib:data/private/set temp

function moxlib:data/set/cleanup