data modify storage moxlib:api/data/compare target set value {id:3s}
data modify storage moxlib:api/data/compare key set value {id:3s}

function moxlib:api/data/compare

data modify storage moxlib:test/it describes set value "Compare same"
data modify storage moxlib:test/it expects set value {result:true}
data modify storage moxlib:test/it receives.result set from storage moxlib:api/data/compare output

function moxlib:api/test/perform