execute if predicate moxlib:helpers/block/get/states/hanging/true run data modify storage moxlib:api/helpers/block/get output.state.hanging set value true
execute if predicate moxlib:helpers/block/get/states/hanging/false run data modify storage moxlib:api/helpers/block/get output.state.hanging set value false