function moxlib:string/common/setup
data modify storage moxlib:string/split concatenate.target set value ""

function moxlib:string/split/iterate
data modify storage moxlib:api/string/split output append from storage moxlib:string/split concatenate.target

data remove storage moxlib:string/split concatenate
function moxlib:string/common/cleanup