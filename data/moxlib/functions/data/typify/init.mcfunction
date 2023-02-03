data modify storage moxlib:data/private/typify typed_arrays set value {integer_array: [0], string_array: [""], array_array: [[]], object_array: [{}]}

function moxlib:data/typify/checks
function moxlib:data/typify/find

execute if data storage moxlib:api/data/typify output{type:"array"} run function moxlib:data/typify/array

function moxlib:data/typify/set_output
function moxlib:data/typify/cleanup
