data modify storage moxlib:api/data/get target set value [{id:1s,data:"test"},{id:2s,data:"test"},{id:3s,data:"test"},{id:4s,data:"test"}]
data modify storage moxlib:api/data/get key set value {id:3s}

function moxlib:api/data/get

data modify storage moxlib:test/it describes set value "The get function"
data modify storage moxlib:test/it expects set value {id:3s,data:"test"}
data modify storage moxlib:test/it receives set from storage moxlib:api/data/get output

function moxlib:api/test/perform