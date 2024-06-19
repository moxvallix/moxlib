data modify storage moxlib:math/string_to_integer digit set from storage moxlib:api/string/to_array output[0]

scoreboard players set $digit moxlib.math.string_to_integer -1

execute if data storage moxlib:math/string_to_integer {digit:"0"} run scoreboard players set $digit moxlib.math.string_to_integer 0
execute if data storage moxlib:math/string_to_integer {digit:"1"} run scoreboard players set $digit moxlib.math.string_to_integer 1
execute if data storage moxlib:math/string_to_integer {digit:"2"} run scoreboard players set $digit moxlib.math.string_to_integer 2
execute if data storage moxlib:math/string_to_integer {digit:"3"} run scoreboard players set $digit moxlib.math.string_to_integer 3
execute if data storage moxlib:math/string_to_integer {digit:"4"} run scoreboard players set $digit moxlib.math.string_to_integer 4
execute if data storage moxlib:math/string_to_integer {digit:"5"} run scoreboard players set $digit moxlib.math.string_to_integer 5
execute if data storage moxlib:math/string_to_integer {digit:"6"} run scoreboard players set $digit moxlib.math.string_to_integer 6
execute if data storage moxlib:math/string_to_integer {digit:"7"} run scoreboard players set $digit moxlib.math.string_to_integer 7
execute if data storage moxlib:math/string_to_integer {digit:"8"} run scoreboard players set $digit moxlib.math.string_to_integer 8
execute if data storage moxlib:math/string_to_integer {digit:"9"} run scoreboard players set $digit moxlib.math.string_to_integer 9

execute if score $digit moxlib.math.string_to_integer matches -1 run data modify storage moxlib:api/math/string_to_integer success set value false
execute store result storage moxlib:math/string_to_integer digit byte 1 run scoreboard players get $digit moxlib.math.string_to_integer
execute if data storage moxlib:api/math/string_to_integer {success:true} run data modify storage moxlib:api/math/array_to_integer target append from storage moxlib:math/string_to_integer digit

data remove storage moxlib:api/string/to_array output[0]

execute if data storage moxlib:api/string/to_array output[0] if data storage moxlib:api/math/string_to_integer {success:true} run function moxlib:math/string_to_integer/iterate
