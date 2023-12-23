function moxlib:string/common/setup
data modify storage moxlib:string/from_array concatenate.target set value ""

function moxlib:string/from_array/iterate

data modify storage moxlib:api/string/from_array output set from storage moxlib:string/from_array concatenate.target
data remove storage moxlib:string/from_array concatenate
function moxlib:string/common/cleanup