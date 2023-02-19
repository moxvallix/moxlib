execute if predicate moxlib:block/states/west/true run data modify storage moxlib:api/helpers/block/get output.state.west set value true
execute if predicate moxlib:block/states/west/false run data modify storage moxlib:api/helpers/block/get output.state.west set value false
execute if predicate moxlib:block/states/west/low run data modify storage moxlib:api/helpers/block/get output.state.west set value "low"
execute if predicate moxlib:block/states/west/none run data modify storage moxlib:api/helpers/block/get output.state.west set value "none"
execute if predicate moxlib:block/states/west/tall run data modify storage moxlib:api/helpers/block/get output.state.west set value "tall"