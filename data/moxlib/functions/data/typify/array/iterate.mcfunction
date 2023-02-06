data modify storage moxlib:data/private/typify stack append value {type: "unknown", value: 0}
data modify storage moxlib:data/private/typify stack[-1].value set from storage moxlib:data/private/typify array_stack[-1][0]

tellraw @a {"nbt": "stack", "storage": "moxlib:data/private/typify"}

function moxlib:data/typify/main

tellraw @a {"nbt":"output", "storage": "moxlib:api/data/typify"}

data modify storage moxlib:data/private/typify array_result_stack[-1] append from storage moxlib:api/data/typify output
data remove storage moxlib:data/private/typify array_stack[-1][0]

execute if data storage moxlib:data/private/typify array_stack[-1][0] run function moxlib:data/typify/array/iterate
