data modify storage moxlib:api/helpers/data/type target set value {__test:true}
function moxlib:api/helpers/data/type

data modify storage moxlib:test/it describes set value "Returns unknown if invalid"
data modify storage moxlib:test/it expects set value "unknown"
data modify storage moxlib:test/it receives set from storage moxlib:api/helpers/data/type output

function moxlib:api/test/perform