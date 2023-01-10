data modify storage moxlib:helpers/inventory/compact append set from storage moxlib:helpers/inventory/compact current

execute if score $total moxlib.helpers.inventory.compact > $stack moxlib.helpers.inventory.compact store result storage moxlib:helpers/inventory/compact append.Count byte 1 run scoreboard players get $stack moxlib.helpers.inventory.compact
execute if score $total moxlib.helpers.inventory.compact <= $stack moxlib.helpers.inventory.compact store result storage moxlib:helpers/inventory/compact append.Count byte 1 run scoreboard players get $total moxlib.helpers.inventory.compact

data modify storage moxlib:api/helpers/inventory/compact output append from storage moxlib:helpers/inventory/compact append

scoreboard players operation $total moxlib.helpers.inventory.compact -= $stack moxlib.helpers.inventory.compact
execute if score $total moxlib.helpers.inventory.compact matches 1.. run function moxlib:helpers/inventory/compact/stack/append