execute unless data storage moxlib:helpers/inventory/insert empty_slots[] run return -1
data modify storage moxlib:api/helpers/inventory/insert item.Slot set from storage moxlib:helpers/inventory/insert empty_slots[0]
data remove storage moxlib:helpers/inventory/insert empty_slots[0]

execute if score $insert_size moxlib.helpers.inventory.insert <= $stack moxlib.helpers.inventory.insert store result storage moxlib:api/helpers/inventory/insert item.Count byte 1 run scoreboard players get $insert_size moxlib.helpers.inventory.insert
execute if score $insert_size moxlib.helpers.inventory.insert <= $stack moxlib.helpers.inventory.insert run data modify storage moxlib:api/helpers/inventory/insert output.inventory append from storage moxlib:api/helpers/inventory/insert item
execute if score $insert_size moxlib.helpers.inventory.insert <= $stack moxlib.helpers.inventory.insert run scoreboard players set $insert_size moxlib.helpers.inventory.insert 0
execute if score $insert_size moxlib.helpers.inventory.insert <= $stack moxlib.helpers.inventory.insert run return -1

scoreboard players operation $insert_size moxlib.helpers.inventory.insert -= $stack moxlib.helpers.inventory.insert
execute store result storage moxlib:api/helpers/inventory/insert item.Count byte 1 run scoreboard players get $stack moxlib.helpers.inventory.insert
data modify storage moxlib:api/helpers/inventory/insert output.inventory append from storage moxlib:api/helpers/inventory/insert item

function moxlib:helpers/inventory/insert/insert_overflow
