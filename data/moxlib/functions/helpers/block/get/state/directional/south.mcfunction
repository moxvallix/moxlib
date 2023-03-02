execute if predicate moxlib:block/states/south/true run data modify storage moxlib:api/helpers/block/get output.state.south set value true
execute if predicate moxlib:block/states/south/false run data modify storage moxlib:api/helpers/block/get output.state.south set value false
execute if predicate moxlib:block/states/south/low run data modify storage moxlib:api/helpers/block/get output.state.south set value "low"
execute if predicate moxlib:block/states/south/none run data modify storage moxlib:api/helpers/block/get output.state.south set value "none"
execute if predicate moxlib:block/states/south/tall run data modify storage moxlib:api/helpers/block/get output.state.south set value "tall"