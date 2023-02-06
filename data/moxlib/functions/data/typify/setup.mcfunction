data modify storage moxlib:data/private/typify stack set value []
data modify storage moxlib:data/private/typify array_stack set value []
data modify storage moxlib:data/private/typify array_result_stack set value []
data modify storage moxlib:data/private/typify stack append value {type: "unknown", value: 0}
data modify storage moxlib:data/private/typify stack[-1].value set from storage moxlib:api/data/typify target
