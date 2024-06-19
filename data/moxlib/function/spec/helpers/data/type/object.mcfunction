data modify storage moxlib:api/helpers/data/type target set value {a:1,b:2}
function moxlib:api/helpers/data/type

data modify storage moxlib:test/it describes set value "Detects object type"
data modify storage moxlib:test/it expects set value "object"
data modify storage moxlib:test/it receives set from storage moxlib:api/helpers/data/type output

function moxlib:api/test/perform