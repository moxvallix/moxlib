data modify storage moxlib:math/private/parse_int digit set from storage moxlib:api/string/to_array output[0]

scoreboard players set $digit moxlib.math.parse_int -1

execute if data storage moxlib:math/private/parse_int {digit:"0"} run scoreboard players set $digit moxlib.math.parse_int 0
execute if data storage moxlib:math/private/parse_int {digit:"1"} run scoreboard players set $digit moxlib.math.parse_int 1
execute if data storage moxlib:math/private/parse_int {digit:"2"} run scoreboard players set $digit moxlib.math.parse_int 2
execute if data storage moxlib:math/private/parse_int {digit:"3"} run scoreboard players set $digit moxlib.math.parse_int 3
execute if data storage moxlib:math/private/parse_int {digit:"4"} run scoreboard players set $digit moxlib.math.parse_int 4
execute if data storage moxlib:math/private/parse_int {digit:"5"} run scoreboard players set $digit moxlib.math.parse_int 5
execute if data storage moxlib:math/private/parse_int {digit:"6"} run scoreboard players set $digit moxlib.math.parse_int 6
execute if data storage moxlib:math/private/parse_int {digit:"7"} run scoreboard players set $digit moxlib.math.parse_int 7
execute if data storage moxlib:math/private/parse_int {digit:"8"} run scoreboard players set $digit moxlib.math.parse_int 8
execute if data storage moxlib:math/private/parse_int {digit:"9"} run scoreboard players set $digit moxlib.math.parse_int 9

execute if score $digit moxlib.math.parse_int matches -1 run data modify storage moxlib:api/math/parse_int success set value false
execute store result storage moxlib:math/private/parse_int digit byte 1 run scoreboard players get $digit moxlib.math.parse_int
execute if data storage moxlib:api/math/parse_int {success:true} run data modify storage moxlib:api/math/array_to_integer target append from storage moxlib:math/private/parse_int digit

data remove storage moxlib:api/string/to_array output[0]

execute if data storage moxlib:api/string/to_array output[0] if data storage moxlib:api/math/parse_int {success:true} run function moxlib:math/parse_int/iterate
