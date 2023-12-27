data modify storage moxlib:api/data/paginate target set value [1,2,3,4,5,6,7,8,9]
data modify storage moxlib:api/data/paginate count set value 3
data modify storage moxlib:api/data/paginate page set value 2

function moxlib:api/data/paginate

data modify storage moxlib:test/it describes set value "Paginating an array"
data modify storage moxlib:test/it expects set value [4,5,6]
data modify storage moxlib:test/it receives set from storage moxlib:api/data/paginate output

function moxlib:api/test/perform

data modify storage moxlib:api/data/paginate target set value [1,2,3,4,5,6,7,8]
data modify storage moxlib:api/data/paginate count set value 3
data modify storage moxlib:api/data/paginate page set value 3

function moxlib:api/data/paginate

data modify storage moxlib:test/it describes set value "Paginating an array with not enough elements"
data modify storage moxlib:test/it expects set value [7,8]
data modify storage moxlib:test/it receives set from storage moxlib:api/data/paginate output

function moxlib:api/test/perform

data modify storage moxlib:api/data/paginate target set value []
data modify storage moxlib:api/data/paginate count set value 2
data modify storage moxlib:api/data/paginate page set value 1

function moxlib:api/data/paginate

data modify storage moxlib:test/it describes set value "Paginating an array with no elements"
data modify storage moxlib:test/it expects set value []
data modify storage moxlib:test/it receives set from storage moxlib:api/data/paginate output

function moxlib:api/test/perform