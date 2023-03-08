data modify storage moxlib:api/math/parse_int success set value true

data modify storage moxlib:api/string/to_array target set from storage moxlib:api/math/parse_int target
function moxlib:api/string/to_array

data modify storage moxlib:api/math/array_to_integer target set value []
execute unless data storage moxlib:api/string/to_array output[0] run data modify storage moxlib:api/math/parse_int success set value false
execute if data storage moxlib:api/string/to_array output[0] run function moxlib:math/parse_int/iterate

execute if data storage moxlib:api/math/parse_int {success:true} run function moxlib:api/math/array_to_integer

data modify storage moxlib:api/math/parse_int output set from storage moxlib:api/math/array_to_integer output
execute if data storage moxlib:api/math/parse_int {success:false} run data remove storage moxlib:api/math/parse_int output
data remove storage moxlib:api/math/parse_int target