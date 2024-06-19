function moxlib:helpers/data/type/setup

execute store success storage moxlib:helpers/data/type success byte 1 run data modify storage moxlib:helpers/data/type target append value "__test"

execute if data storage moxlib:helpers/data/type {success:true} run data modify storage moxlib:api/helpers/data/type output set value "array"