function moxlib:api/helpers/inventory/free_slot

execute if data storage moxlib:api/helpers/inventory/free_slot {output:-1b} at @s run function moxlib:helpers/inventory/give/drop
execute unless data storage moxlib:api/helpers/inventory/free_slot {output:-1b} run function moxlib:helpers/inventory/give/slot

data remove storage moxlib:api/helpers/inventory/give target