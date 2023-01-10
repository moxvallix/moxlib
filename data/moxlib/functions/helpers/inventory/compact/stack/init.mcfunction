data modify storage moxlib:api/helpers/inventory/stack_max target set from storage moxlib:helpers/inventory/compact current.id
function moxlib:api/helpers/inventory/stack_max

execute store result score $stack moxlib.helpers.inventory.compact run data get storage moxlib:api/helpers/inventory/stack_max output
scoreboard players set $total moxlib.helpers.inventory.compact 0

function moxlib:helpers/inventory/compact/stack/count
function moxlib:helpers/inventory/compact/stack/append