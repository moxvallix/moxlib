data remove storage moxlib:api/helpers/data/type output
execute unless data storage moxlib:api/helpers/data/type output run function moxlib:helpers/data/type/object
execute unless data storage moxlib:api/helpers/data/type output run function moxlib:helpers/data/type/array
execute unless data storage moxlib:api/helpers/data/type output run function moxlib:helpers/data/type/numeric
execute unless data storage moxlib:api/helpers/data/type output run function moxlib:helpers/data/type/json
execute unless data storage moxlib:api/helpers/data/type output run function moxlib:helpers/data/type/string
execute unless data storage moxlib:api/helpers/data/type output run data modify storage moxlib:api/helpers/data/type output set value "unknown"