execute if predicate moxlib:block/states/tilt/full run data modify storage moxlib:api/helpers/block/get output.state.tilt set value "full"
execute if predicate moxlib:block/states/tilt/none run data modify storage moxlib:api/helpers/block/get output.state.tilt set value "none"
execute if predicate moxlib:block/states/tilt/partial run data modify storage moxlib:api/helpers/block/get output.state.tilt set value "partial"
execute if predicate moxlib:block/states/tilt/unstable run data modify storage moxlib:api/helpers/block/get output.state.tilt set value "unstable"