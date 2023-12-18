$data merge storage moxlib:api/data/array/sample {target:$(target),amount:1}
function moxlib:api/data/array/sample
data modify storage moxlib:api/data/array/pick output set from storage moxlib:api/data/array/sample output[0]