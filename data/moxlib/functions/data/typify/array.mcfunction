data modify storage moxlib:data/private/typify array_stack append from storage moxlib:data/private/typify stack[-1].value
data modify storage moxlib:data/private/typify array_result_stack append value []

function moxlib:data/typify/array/iterate

data modify storage moxlib:data/private/typify stack[-1].value set from storage moxlib:data/private/typify array_result_stack[-1]

data remove storage moxlib:data/private/typify array_stack[-1]
data remove storage moxlib:data/private/typify array_result_stack[-1]
