data modify storage moxlib:data/private/get current set from storage moxlib:api/data/get target[0]
data remove storage moxlib:api/data/get target[0]
execute store result score $size moxlib.data.get run data get storage moxlib:api/data/get target

data modify storage moxlib:api/data/compare target set from storage moxlib:data/private/get current
data modify storage moxlib:api/data/compare key set from storage moxlib:api/data/get key

function moxlib:data/compare/compare

execute if data storage moxlib:api/data/compare {output:true} run function moxlib:data/get/return
execute if score $size moxlib.data.get matches 1.. run function moxlib:data/get/get
execute unless score $size moxlib.data.get matches 1.. run function moxlib:data/get/cleanup