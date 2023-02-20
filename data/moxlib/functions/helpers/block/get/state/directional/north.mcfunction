execute if predicate moxlib:block/states/north/true run data modify storage moxlib:api/helpers/block/get output.state.north set value true
execute if predicate moxlib:block/states/north/false run data modify storage moxlib:api/helpers/block/get output.state.north set value false
execute if predicate moxlib:block/states/north/low run data modify storage moxlib:api/helpers/block/get output.state.north set value "low"
execute if predicate moxlib:block/states/north/none run data modify storage moxlib:api/helpers/block/get output.state.north set value "none"
execute if predicate moxlib:block/states/north/tall run data modify storage moxlib:api/helpers/block/get output.state.north set value "tall"