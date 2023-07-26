execute store result storage moxlib:helpers/inventory/insert inventory[0].Count byte 1 run scoreboard players get $target_size moxlib.helpers.inventory.insert
data modify storage moxlib:api/helpers/inventory/insert output.inventory append from storage moxlib:helpers/inventory/insert inventory[]
data modify storage moxlib:helpers/inventory/insert inventory set value []
scoreboard players set $insert_size moxlib.helpers.inventory.insert 0