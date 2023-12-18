data modify storage moxlib:data/private/set current set from storage moxlib:api/data/legacy/set target[0]
data remove storage moxlib:api/data/legacy/set target[0]
execute store result score $size moxlib.data.set run data get storage moxlib:api/data/legacy/set target

data modify storage moxlib:api/data/legacy/compare target set from storage moxlib:data/private/set current
data modify storage moxlib:api/data/legacy/compare key set from storage moxlib:api/data/legacy/set key
function moxlib:data/legacy/compare/compare

execute if data storage moxlib:api/data/legacy/compare {output:true} run function moxlib:data/legacy/set/return 

execute if score $size moxlib.data.set matches 1.. run data modify storage moxlib:api/data/legacy/set output append from storage moxlib:data/private/set current
execute if score $size moxlib.data.set matches 1.. run function moxlib:data/legacy/set/set

execute unless score $size moxlib.data.set matches 1.. unless data storage moxlib:api/data/legacy/compare {output:true} run function moxlib:data/legacy/set/add