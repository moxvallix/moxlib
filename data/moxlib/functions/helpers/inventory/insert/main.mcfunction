execute unless data storage moxlib:api/helpers/inventory/insert target[] run function moxlib:helpers/inventory/insert/empty_inventory
execute unless data storage moxlib:api/helpers/inventory/insert target[] run return -1

# 8077ef6a-7e7f-4a77-94d8-f99eb9e6e2f3
summon chest_minecart ~ 1000 ~ {UUID:[I; -2139623574, 2122271351, -1797719650, -1176050957]}
data modify entity 8077ef6a-7e7f-4a77-94d8-f99eb9e6e2f3 Items set from storage moxlib:api/helpers/inventory/insert target
data modify storage moxlib:helpers/inventory/insert inventory set from entity 8077ef6a-7e7f-4a77-94d8-f99eb9e6e2f3 Items
data modify entity 8077ef6a-7e7f-4a77-94d8-f99eb9e6e2f3 Items set value []
kill 8077ef6a-7e7f-4a77-94d8-f99eb9e6e2f3

execute store result score $insert_size moxlib.helpers.inventory.insert run data get storage moxlib:api/helpers/inventory/insert item.Count
scoreboard players set $next_slot moxlib.helpers.inventory.insert -1
data modify storage moxlib:helpers/inventory/insert empty_slots set value []

data modify storage moxlib:api/helpers/inventory/stack_max target set from storage moxlib:api/helpers/inventory/insert item.id
function moxlib:api/helpers/inventory/stack_max
execute store result score $stack moxlib.helpers.inventory.insert run data get storage moxlib:api/helpers/inventory/stack_max output

function moxlib:helpers/inventory/insert/iterate

execute if score $insert_size moxlib.helpers.inventory.insert matches 0 run return -1

scoreboard players set $current_slot moxlib.helpers.inventory.insert 27
function moxlib:helpers/inventory/insert/iterate/get_empty_slots

function moxlib:helpers/inventory/insert/insert_overflow

# 8077ef6a-7e7f-4a77-94d8-f99eb9e6e2f3
summon chest_minecart ~ 1000 ~ {UUID:[I; -2139623574, 2122271351, -1797719650, -1176050957]}
data modify entity 8077ef6a-7e7f-4a77-94d8-f99eb9e6e2f3 Items set from storage moxlib:api/helpers/inventory/insert output.inventory
data modify storage moxlib:api/helpers/inventory/insert output.inventory set from entity 8077ef6a-7e7f-4a77-94d8-f99eb9e6e2f3 Items
data modify entity 8077ef6a-7e7f-4a77-94d8-f99eb9e6e2f3 Items set value []
kill 8077ef6a-7e7f-4a77-94d8-f99eb9e6e2f3

execute if score $insert_size moxlib.helpers.inventory.insert matches 0 run return -1
execute store result storage moxlib:api/helpers/inventory/insert item.Count int 1 run scoreboard players get $insert_size moxlib.helpers.inventory.insert
data modify storage moxlib:api/helpers/inventory/insert output.overflow set from storage moxlib:api/helpers/inventory/insert item
