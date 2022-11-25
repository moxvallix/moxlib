function moxlib:helpers/data/type/setup
data remove storage moxlib:helpers/data/type compare

execute store result storage moxlib:helpers/data/type compare byte 1 run data get storage moxlib:helpers/data/type target

execute store success storage moxlib:helpers/data/type success byte 1 run data modify storage moxlib:helpers/data/type target set from storage moxlib:helpers/data/type compare
execute if data storage moxlib:helpers/data/type {success:false} run data modify storage moxlib:api/helpers/data/type output set value "byte"