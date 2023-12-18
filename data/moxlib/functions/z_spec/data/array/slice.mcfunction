data modify storage moxlib:api/data/array/slice target set value [1,2,3,4,5,6,7,8,9]

function moxlib:api/data/array/slice

data modify storage moxlib:test/it describes set value "An array sliced with no start or end"
data modify storage moxlib:test/it expects set value [1,2,3,4,5,6,7,8,9]
data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/slice output

function moxlib:api/test/perform

data modify storage moxlib:api/data/array/slice target set value [1,2,3,4,5,6,7,8,9]
data modify storage moxlib:api/data/array/slice start set value 2

function moxlib:api/data/array/slice

data modify storage moxlib:test/it describes set value "An array sliced with no end"
data modify storage moxlib:test/it expects set value [3,4,5,6,7,8,9]
data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/slice output

function moxlib:api/test/perform

data modify storage moxlib:api/data/array/slice target set value [1,2,3,4,5,6,7,8,9]
data modify storage moxlib:api/data/array/slice end set value 7

function moxlib:api/data/array/slice

data modify storage moxlib:test/it describes set value "An array sliced with no start"
data modify storage moxlib:test/it expects set value [1,2,3,4,5,6,7]
data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/slice output

function moxlib:api/test/perform

data modify storage moxlib:api/data/array/slice target set value [1,2,3,4,5,6,7,8,9]
data modify storage moxlib:api/data/array/slice start set value 4
data modify storage moxlib:api/data/array/slice end set value 7

function moxlib:api/data/array/slice

data modify storage moxlib:test/it describes set value "A slice operation"
data modify storage moxlib:test/it expects set value [5,6,7]
data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/slice output

function moxlib:api/test/perform

data modify storage moxlib:api/data/array/slice target set value [1,2,3,4,5,6,7,8,9]
data modify storage moxlib:api/data/array/slice start set value 4
data modify storage moxlib:api/data/array/slice end set value 4

function moxlib:api/data/array/slice

data modify storage moxlib:test/it describes set value "A slice operation with zero magnitude"
data modify storage moxlib:test/it expects set value []
data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/slice output

function moxlib:api/test/perform

data modify storage moxlib:api/data/array/slice target set value [1,2,3,4,5,6,7,8,9]
data modify storage moxlib:api/data/array/slice start set value 4
data modify storage moxlib:api/data/array/slice end set value 2

function moxlib:api/data/array/slice

data modify storage moxlib:test/it describes set value "A slice operation with the end less than the start"
data modify storage moxlib:test/it expects set value {success:0b,error:"End cannot be less than start"}
data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/slice {}

function moxlib:api/test/perform
