data modify storage moxlib:string/from_array concatenate.suffix set from storage moxlib:api/string/from_array target[0]

function moxlib:api/string/concatenate.macro with storage moxlib:string/from_array concatenate

data modify storage moxlib:string/from_array concatenate.target set from storage moxlib:api/string/concatenate output

data remove storage moxlib:api/string/from_array target[0]
execute if data storage moxlib:api/string/from_array target[] run function moxlib:string/from_array/iterate