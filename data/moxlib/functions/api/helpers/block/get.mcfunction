data remove storage moxlib:api/helpers/block/get output
execute if block ~ ~ ~ #moxlib:helpers/begins_with/a_to_f run function moxlib:helpers/block/get/a_to_f
execute if block ~ ~ ~ #moxlib:helpers/begins_with/g_to_l run function moxlib:helpers/block/get/g_to_l
execute if block ~ ~ ~ #moxlib:helpers/begins_with/m_to_r run function moxlib:helpers/block/get/m_to_r
execute if block ~ ~ ~ #moxlib:helpers/begins_with/s_to_z run function moxlib:helpers/block/get/s_to_z
execute if predicate moxlib:block/has_state run function moxlib:helpers/block/get/state
execute if data block ~ ~ ~ {} run data modify storage moxlib:api/helpers/block/get output.data set from block ~ ~ ~ {}