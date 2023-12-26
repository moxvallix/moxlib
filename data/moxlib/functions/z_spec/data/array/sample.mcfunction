data modify storage moxlib:api/data/array/sample target set value [1,1,1,1,1]
data modify storage moxlib:api/data/array/sample amount set value 1

function moxlib:api/data/array/sample

data modify storage moxlib:test/it describes set value "Successfully sampling an item from an array"
data modify storage moxlib:test/it expects set value [1]
data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/sample output

function moxlib:api/test/perform

data modify storage moxlib:api/data/array/sample target set value [42,42,42,42,42]
data modify storage moxlib:api/data/array/sample amount set value 3

function moxlib:api/data/array/sample

data modify storage moxlib:test/it describes set value "Successfully sampling multiple items from an array"
data modify storage moxlib:test/it expects set value [42,42,42]
data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/sample output

function moxlib:api/test/perform

data modify storage moxlib:api/data/array/sample target set value [69,69,69]
data modify storage moxlib:api/data/array/sample amount set value 0

function moxlib:api/data/array/sample

data modify storage moxlib:test/it describes set value "Successfully sampling no items from an array"
data modify storage moxlib:test/it expects set value []
data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/sample output

function moxlib:api/test/perform

data modify storage moxlib:api/data/array/sample target set value [17,17]
data modify storage moxlib:api/data/array/sample amount set value 4

function moxlib:api/data/array/sample

data modify storage moxlib:test/it describes set value "Trying to sample too many items from an array"
data modify storage moxlib:test/it expects set value [17,17]
data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/sample output

function moxlib:api/test/perform
