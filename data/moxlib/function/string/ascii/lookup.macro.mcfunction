data modify storage moxlib:api/string/ascii/lookup output set value {id:-1,value:"",name:"undefined"}
$data modify storage moxlib:api/string/ascii/lookup output set from storage moxlib:api/string/ascii/table output[$(target)]
data remove storage moxlib:api/string/ascii/lookup target