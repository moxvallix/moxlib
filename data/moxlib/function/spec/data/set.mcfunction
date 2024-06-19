data modify storage moxlib:api/data/set target set value [{id:1s,data:"test"},{id:2s,data:"test"},{id:3s,hello:"test"},{id:4s,data:"test"}]
data modify storage moxlib:api/data/set key set value {id:3s}
data modify storage moxlib:api/data/set data set value {hello:"hi"}

function moxlib:api/data/set

data modify storage moxlib:api/data/get target set from storage moxlib:api/data/set output
data modify storage moxlib:api/data/get key set value {id:3s}

function moxlib:api/data/get

data modify storage moxlib:test/it describes set value "The set function"
data modify storage moxlib:test/it expects set value {id:3s,hello:"hi"}
data modify storage moxlib:test/it receives set from storage moxlib:api/data/get output

function moxlib:api/test/perform