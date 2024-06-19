data modify storage moxlib:helpers/inventory/strip_slots current set from storage moxlib:api/helpers/inventory/strip_slots target[0]
data remove storage moxlib:api/helpers/inventory/strip_slots target[0]

data remove storage moxlib:helpers/inventory/strip_slots current.Slot
data modify storage moxlib:api/helpers/inventory/strip_slots output append from storage moxlib:helpers/inventory/strip_slots current

execute store result score $size moxlib.helpers.inventory.strip_slots run data get storage moxlib:api/helpers/inventory/strip_slots target
execute if score $size moxlib.helpers.inventory.strip_slots matches 1.. run function moxlib:helpers/inventory/strip_slots/iterate