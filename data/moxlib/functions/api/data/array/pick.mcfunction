data modify storage moxlib:api/data/array/sample target set from storage moxlib:api/data/array/pick target
data modify storage moxlib:api/data/array/sample amount set value 1
function moxlib:api/data/array/sample

data modify storage moxlib:api/data/array/pick output set from storage moxlib:api/data/array/sample output[0]