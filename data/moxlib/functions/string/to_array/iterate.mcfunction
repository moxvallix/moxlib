data modify storage moxlib:api/data/to_array output append string storage moxlib:api/data/to_array target 0 1
data modify storage moxlib:api/data/to_array target set string storage moxlib:api/data/to_array target 1

execute store result score $size moxlib.string.to_array run data get storage moxlib:api/data/to_array target
execute if score $size moxlib.string.to_array matches 1.. run function moxlib:data/to_array/iterate