execute if predicate moxlib:helpers/block/get/states/west/true run data modify storage moxlib:api/helpers/block/get output.state.west set value true
execute if predicate moxlib:helpers/block/get/states/west/false run data modify storage moxlib:api/helpers/block/get output.state.west set value false
execute if predicate moxlib:helpers/block/get/states/west/low run data modify storage moxlib:api/helpers/block/get output.state.west set value "low"
execute if predicate moxlib:helpers/block/get/states/west/none run data modify storage moxlib:api/helpers/block/get output.state.west set value "none"
execute if predicate moxlib:helpers/block/get/states/west/tall run data modify storage moxlib:api/helpers/block/get output.state.west set value "tall"