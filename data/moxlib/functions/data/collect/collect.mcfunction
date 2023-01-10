data modify storage moxlib:data/private/collect current set from storage moxlib:api/data/collect target[0]
data remove storage moxlib:api/data/collect target[0]

data modify storage moxlib:api/data/compare target set from storage moxlib:data/private/collect current
data modify storage moxlib:api/data/compare key set from storage moxlib:api/data/collect key

function moxlib:data/compare/compare

execute if data storage moxlib:api/data/compare {output:true} run function moxlib:data/collect/match
execute unless data storage moxlib:api/data/compare {output:true} run function moxlib:data/collect/remain

execute store result score $size moxlib.data.collect run data get storage moxlib:api/data/collect target
execute if score $size moxlib.data.collect matches 1.. run function moxlib:data/collect/collect
execute unless score $size moxlib.data.collect matches 1.. run function moxlib:data/collect/cleanup