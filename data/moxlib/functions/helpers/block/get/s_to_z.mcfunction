data modify storage moxlib:api/helpers/block/get output.group set value "s_to_z"
execute if block ~ ~ ~ #moxlib:helpers/begins_with/s run function moxlib:helpers/block/get/s_to_z/s
execute if block ~ ~ ~ #moxlib:helpers/begins_with/t run function moxlib:helpers/block/get/s_to_z/t
execute if block ~ ~ ~ #moxlib:helpers/begins_with/v run function moxlib:helpers/block/get/s_to_z/v
execute if block ~ ~ ~ #moxlib:helpers/begins_with/w run function moxlib:helpers/block/get/s_to_z/w
execute if block ~ ~ ~ #moxlib:helpers/begins_with/y run function moxlib:helpers/block/get/s_to_z/y
execute if block ~ ~ ~ #moxlib:helpers/begins_with/z run function moxlib:helpers/block/get/s_to_z/z