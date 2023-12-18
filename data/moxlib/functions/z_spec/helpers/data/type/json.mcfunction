data modify storage moxlib:api/helpers/data/type target set value '{"text":"__test"}'
function moxlib:api/helpers/data/type

data modify storage moxlib:test/it describes set value "Detects json type"
data modify storage moxlib:test/it expects set value "json"
data modify storage moxlib:test/it receives set from storage moxlib:api/helpers/data/type output

function moxlib:api/test/perform