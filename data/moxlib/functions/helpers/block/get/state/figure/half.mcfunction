execute if predicate moxlib:block/states/half/lower run data modify storage moxlib:api/helpers/block/get output.state.half set value "lower"
execute if predicate moxlib:block/states/half/upper run data modify storage moxlib:api/helpers/block/get output.state.half set value "upper"
execute if predicate moxlib:block/states/half/bottom run data modify storage moxlib:api/helpers/block/get output.state.half set value "bottom"
execute if predicate moxlib:block/states/half/top run data modify storage moxlib:api/helpers/block/get output.state.half set value "top"