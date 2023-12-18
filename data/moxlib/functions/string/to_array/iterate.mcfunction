data modify storage moxlib:api/string/to_array output append string storage moxlib:api/string/to_array target 0 1
data modify storage moxlib:api/string/to_array target set string storage moxlib:api/string/to_array target 1

execute unless data storage moxlib:api/string/to_array {target: ""} run function moxlib:string/to_array/iterate