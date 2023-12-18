execute store success storage moxlib:api/data/legacy/set success byte 1 run data modify storage moxlib:api/data/legacy/set output append from storage moxlib:data/private/set current

data modify storage moxlib:data/private/set temp set from storage moxlib:api/data/legacy/set key
data modify storage moxlib:data/private/set temp merge from storage moxlib:api/data/legacy/set data
data modify storage moxlib:api/data/legacy/set output append from storage moxlib:data/private/set temp

function moxlib:data/legacy/set/cleanup