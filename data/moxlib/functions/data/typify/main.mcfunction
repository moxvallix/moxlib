data modify storage moxlib:data/private/typify typed_arrays set value {byte_array: [0b], short_array: [0s], integer_array: [0], float_array: [0f], double_array: [0d], long_array: [0l], string_array: [""], array_array: [[]], object_array: [{}]}

function moxlib:data/typify/checks
function moxlib:data/typify/find

execute if data storage moxlib:data/private/typify result{type:"array"} run function moxlib:data/typify/array

function moxlib:data/typify/set_output

data remove storage moxlib:data/private/typify stack[-1]
