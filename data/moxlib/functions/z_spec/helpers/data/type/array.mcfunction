data modify storage moxlib:api/helpers/data/type target set value ["a","b"]
function moxlib:api/helpers/data/type

data modify storage moxlib:test/it describes set value "Detects array type"
data modify storage moxlib:test/it expects set value "array"
data modify storage moxlib:test/it receives set from storage moxlib:api/helpers/data/type output

function moxlib:api/test/perform