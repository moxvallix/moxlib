execute if predicate moxlib:helpers/block/get/states/mode/compare run data modify storage moxlib:api/helpers/block/get output.state.mode set value "compare"
execute if predicate moxlib:helpers/block/get/states/mode/subtract run data modify storage moxlib:api/helpers/block/get output.state.mode set value "subtract"
execute if predicate moxlib:helpers/block/get/states/mode/corner run data modify storage moxlib:api/helpers/block/get output.state.mode set value "corner"
execute if predicate moxlib:helpers/block/get/states/mode/data run data modify storage moxlib:api/helpers/block/get output.state.mode set value "data"
execute if predicate moxlib:helpers/block/get/states/mode/load run data modify storage moxlib:api/helpers/block/get output.state.mode set value "load"
execute if predicate moxlib:helpers/block/get/states/mode/save run data modify storage moxlib:api/helpers/block/get output.state.mode set value "save"