data modify storage moxlib:api/data/typify output set value {type: "", value: 0}

execute if score $is_byte moxlib.data.typify matches 1 run data modify storage moxlib:api/data/typify output.type set value "byte"
execute if score $is_short moxlib.data.typify matches 1 run data modify storage moxlib:api/data/typify output.type set value "short"
execute if score $is_integer moxlib.data.typify matches 1 run data modify storage moxlib:api/data/typify output.type set value "integer"
execute if score $is_float moxlib.data.typify matches 1 run data modify storage moxlib:api/data/typify output.type set value "float"
execute if score $is_double moxlib.data.typify matches 1 run data modify storage moxlib:api/data/typify output.type set value "double"
execute if score $is_long moxlib.data.typify matches 1 run data modify storage moxlib:api/data/typify output.type set value "long"

execute if score $is_string moxlib.data.typify matches 1 run data modify storage moxlib:api/data/typify output.type set value "string"

execute if score $is_array moxlib.data.typify matches 1 run data modify storage moxlib:api/data/typify output.type set value "array"

execute if score $is_object moxlib.data.typify matches 1 run data modify storage moxlib:api/data/typify output.type set value "object"

execute if data storage moxlib:api/data/typify output{type:""} run data modify storage moxlib:api/data/typify success set value false
execute unless data storage moxlib:api/data/typify output{type:""} run data modify storage moxlib:api/data/typify success set value true
