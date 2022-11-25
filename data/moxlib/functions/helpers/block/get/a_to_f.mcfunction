data modify storage moxlib:api/helpers/block/get output.group set value "a_to_f"
execute if block ~ ~ ~ #moxlib:helpers/begins_with/a run function moxlib:helpers/block/get/a_to_f/a
execute if block ~ ~ ~ #moxlib:helpers/begins_with/b run function moxlib:helpers/block/get/a_to_f/b
execute if block ~ ~ ~ #moxlib:helpers/begins_with/c run function moxlib:helpers/block/get/a_to_f/c
execute if block ~ ~ ~ #moxlib:helpers/begins_with/d run function moxlib:helpers/block/get/a_to_f/d
execute if block ~ ~ ~ #moxlib:helpers/begins_with/e run function moxlib:helpers/block/get/a_to_f/e
execute if block ~ ~ ~ #moxlib:helpers/begins_with/f run function moxlib:helpers/block/get/a_to_f/f