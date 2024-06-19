execute if predicate moxlib:helpers/block/get/states/south/true run data modify storage moxlib:api/helpers/block/get output.state.south set value true
execute if predicate moxlib:helpers/block/get/states/south/false run data modify storage moxlib:api/helpers/block/get output.state.south set value false
execute if predicate moxlib:helpers/block/get/states/south/low run data modify storage moxlib:api/helpers/block/get output.state.south set value "low"
execute if predicate moxlib:helpers/block/get/states/south/none run data modify storage moxlib:api/helpers/block/get output.state.south set value "none"
execute if predicate moxlib:helpers/block/get/states/south/tall run data modify storage moxlib:api/helpers/block/get output.state.south set value "tall"