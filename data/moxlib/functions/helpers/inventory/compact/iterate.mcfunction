data modify storage moxlib:helpers/inventory/compact current set from storage moxlib:helpers/inventory/compact target[0]

data modify storage moxlib:api/data/collect target set from storage moxlib:helpers/inventory/compact target
data modify storage moxlib:api/data/collect key set from storage moxlib:helpers/inventory/compact current
data remove storage moxlib:api/data/collect key.Slot
data remove storage moxlib:api/data/collect key.Count

function moxlib:api/data/collect

data modify storage moxlib:helpers/inventory/compact match set from storage moxlib:api/data/collect output.match
data modify storage moxlib:helpers/inventory/compact target set from storage moxlib:api/data/collect output.remain

function moxlib:helpers/inventory/compact/stack/init

execute store result score $size moxlib.helpers.inventory.compact run data get storage moxlib:helpers/inventory/compact target
execute if score $size moxlib.helpers.inventory.compact matches 1.. run function moxlib:helpers/inventory/compact/iterate