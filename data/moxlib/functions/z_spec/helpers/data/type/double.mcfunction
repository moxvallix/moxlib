data modify storage moxlib:api/helpers/data/type target set value 1d
function moxlib:api/helpers/data/type

data modify storage moxlib:test/it describes set value "Detects double type"
data modify storage moxlib:test/it expects set value "double"
data modify storage moxlib:test/it receives set from storage moxlib:api/helpers/data/type output

function moxlib:api/test/perform