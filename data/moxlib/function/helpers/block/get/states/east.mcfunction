execute if predicate moxlib:helpers/block/get/states/east/true run data modify storage moxlib:api/helpers/block/get output.state.east set value true
execute if predicate moxlib:helpers/block/get/states/east/false run data modify storage moxlib:api/helpers/block/get output.state.east set value false
execute if predicate moxlib:helpers/block/get/states/east/low run data modify storage moxlib:api/helpers/block/get output.state.east set value "low"
execute if predicate moxlib:helpers/block/get/states/east/none run data modify storage moxlib:api/helpers/block/get output.state.east set value "none"
execute if predicate moxlib:helpers/block/get/states/east/tall run data modify storage moxlib:api/helpers/block/get output.state.east set value "tall"