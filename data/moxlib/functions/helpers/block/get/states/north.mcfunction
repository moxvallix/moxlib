execute if predicate moxlib:helpers/block/get/states/north/true run data modify storage moxlib:api/helpers/block/get output.state.north set value true
execute if predicate moxlib:helpers/block/get/states/north/false run data modify storage moxlib:api/helpers/block/get output.state.north set value false
execute if predicate moxlib:helpers/block/get/states/north/low run data modify storage moxlib:api/helpers/block/get output.state.north set value "low"
execute if predicate moxlib:helpers/block/get/states/north/none run data modify storage moxlib:api/helpers/block/get output.state.north set value "none"
execute if predicate moxlib:helpers/block/get/states/north/tall run data modify storage moxlib:api/helpers/block/get output.state.north set value "tall"