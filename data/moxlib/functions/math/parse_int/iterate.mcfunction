data modify storage moxlib:math/private/parse_int digit set from storage moxlib:api/string/to_array output[0]

execute if data storage moxlib:math/private/parse_int {digit:"0"} run data modify storage moxlib:api/math/array_to_integer target append value 0
execute if data storage moxlib:math/private/parse_int {digit:"1"} run data modify storage moxlib:api/math/array_to_integer target append value 1
execute if data storage moxlib:math/private/parse_int {digit:"2"} run data modify storage moxlib:api/math/array_to_integer target append value 2
execute if data storage moxlib:math/private/parse_int {digit:"3"} run data modify storage moxlib:api/math/array_to_integer target append value 3
execute if data storage moxlib:math/private/parse_int {digit:"4"} run data modify storage moxlib:api/math/array_to_integer target append value 4
execute if data storage moxlib:math/private/parse_int {digit:"5"} run data modify storage moxlib:api/math/array_to_integer target append value 5
execute if data storage moxlib:math/private/parse_int {digit:"6"} run data modify storage moxlib:api/math/array_to_integer target append value 6
execute if data storage moxlib:math/private/parse_int {digit:"7"} run data modify storage moxlib:api/math/array_to_integer target append value 7
execute if data storage moxlib:math/private/parse_int {digit:"8"} run data modify storage moxlib:api/math/array_to_integer target append value 8
execute if data storage moxlib:math/private/parse_int {digit:"9"} run data modify storage moxlib:api/math/array_to_integer target append value 9

data remove storage moxlib:api/string/to_array output[0]

execute if data storage moxlib:api/string/to_array output[0] run function moxlib:math/parse_int/iterate
