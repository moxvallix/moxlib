data modify storage moxlib:helpers/inventory/compact stack set from storage moxlib:helpers/inventory/compact match[0]
data remove storage moxlib:helpers/inventory/compact match[0]

execute store result score $count moxlib.helpers.inventory.compact run data get storage moxlib:helpers/inventory/compact stack.Count
scoreboard players operation $total moxlib.helpers.inventory.compact += $count moxlib.helpers.inventory.compact

execute store result score $match_size moxlib.helpers.inventory.compact run data get storage moxlib:helpers/inventory/compact match
execute if score $match_size moxlib.helpers.inventory.compact matches 1.. run function moxlib:helpers/inventory/compact/stack/count