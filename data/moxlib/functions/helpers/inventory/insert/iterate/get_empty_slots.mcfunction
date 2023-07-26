scoreboard players add $next_slot moxlib.helpers.inventory.insert 1
execute if score $current_slot moxlib.helpers.inventory.insert = $next_slot moxlib.helpers.inventory.insert run return -1

execute store result storage moxlib:helpers/inventory/insert temp byte 1 run scoreboard players get $next_slot moxlib.helpers.inventory.insert
data modify storage moxlib:helpers/inventory/insert empty_slots append from storage moxlib:helpers/inventory/insert temp

function moxlib:helpers/inventory/insert/iterate/get_empty_slots
