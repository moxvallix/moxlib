execute if predicate moxlib:helpers/block/get/states/type/left run data modify storage moxlib:api/helpers/block/get output.state.type set value "left"
execute if predicate moxlib:helpers/block/get/states/type/right run data modify storage moxlib:api/helpers/block/get output.state.type set value "right"
execute if predicate moxlib:helpers/block/get/states/type/single run data modify storage moxlib:api/helpers/block/get output.state.type set value "single"
execute if predicate moxlib:helpers/block/get/states/type/normal run data modify storage moxlib:api/helpers/block/get output.state.type set value "normal"
execute if predicate moxlib:helpers/block/get/states/type/sticky run data modify storage moxlib:api/helpers/block/get output.state.type set value "sticky"
execute if predicate moxlib:helpers/block/get/states/type/bottom run data modify storage moxlib:api/helpers/block/get output.state.type set value "bottom"
execute if predicate moxlib:helpers/block/get/states/type/top run data modify storage moxlib:api/helpers/block/get output.state.type set value "top"
execute if predicate moxlib:helpers/block/get/states/type/double run data modify storage moxlib:api/helpers/block/get output.state.type set value "double"