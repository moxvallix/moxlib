data modify storage moxlib:data/private/set current set from storage moxlib:api/data/set target[0]
data remove storage moxlib:api/data/set target[0]
execute store result score $size moxlib.data.set run data get storage moxlib:api/data/set target

data modify storage moxlib:api/data/compare target set from storage moxlib:data/private/set current
data modify storage moxlib:api/data/compare key set from storage moxlib:api/data/set key
function moxlib:data/compare/compare

execute if data storage moxlib:api/data/compare {output:true} run function moxlib:data/set/return 

execute if score $size moxlib.data.set matches 1.. run data modify storage moxlib:api/data/set output append from storage moxlib:data/private/set current
execute if score $size moxlib.data.set matches 1.. run function moxlib:data/set/set

execute unless score $size moxlib.data.set matches 1.. unless data storage moxlib:api/data/compare {output:true} run function moxlib:data/set/add