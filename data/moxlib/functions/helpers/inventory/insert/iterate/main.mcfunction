data modify storage moxlib:helpers/inventory/insert current set from storage moxlib:helpers/inventory/insert inventory[0]

execute store result score $current_slot moxlib.helpers.inventory.insert run data get storage moxlib:helpers/inventory/insert current.Slot
function moxlib:helpers/inventory/insert/iterate/get_empty_slots

data modify storage moxlib:api/data/compare target set from storage moxlib:helpers/inventory/insert current
data modify storage moxlib:api/data/compare key.id set from storage moxlib:api/helpers/inventory/insert item.id
data modify storage moxlib:api/data/compare key.tag set from storage moxlib:api/helpers/inventory/insert item.tag
function moxlib:api/data/compare

execute if data storage moxlib:api/data/compare {output:false} run data modify storage moxlib:api/helpers/inventory/insert output.inventory append from storage moxlib:helpers/inventory/insert current
execute if data storage moxlib:api/data/compare {output:false} run return -1

execute store result score $target_size moxlib.helpers.inventory.insert run data get storage moxlib:helpers/inventory/insert current.Count
scoreboard players operation $target_size moxlib.helpers.inventory.insert += $insert_size moxlib.helpers.inventory.insert

execute if score $target_size moxlib.helpers.inventory.insert <= $stack moxlib.helpers.inventory.insert run function moxlib:helpers/inventory/insert/iterate/stack_fit
execute if score $target_size moxlib.helpers.inventory.insert <= $stack moxlib.helpers.inventory.insert run return -1

execute store result storage moxlib:helpers/inventory/insert current.Count byte 1 run scoreboard players get $stack moxlib.helpers.inventory.insert
data modify storage moxlib:api/helpers/inventory/insert output.inventory append from storage moxlib:helpers/inventory/insert current
scoreboard players operation $target_size moxlib.helpers.inventory.insert -= $stack moxlib.helpers.inventory.insert
scoreboard players operation $insert_size moxlib.helpers.inventory.insert = $target_size moxlib.helpers.inventory.insert
