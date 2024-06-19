data remove storage moxlib:api/helpers/block/get output
function moxlib:helpers/block/get/blocks/init
execute if predicate moxlib:helpers/block/get/states/init run function moxlib:helpers/block/get/states/init
execute if data block ~ ~ ~ {} run data modify storage moxlib:api/helpers/block/get output.data set from block ~ ~ ~ {}