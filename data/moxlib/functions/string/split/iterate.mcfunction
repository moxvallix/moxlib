data modify storage moxlib:string/split concatenate.suffix set string storage moxlib:api/string/split target 0 1
execute store success storage moxlib:string/split continue byte 1 run data modify storage moxlib:api/string/split target set string storage moxlib:api/string/split target 1
execute unless data storage moxlib:string/split {continue:true} run return -1

execute store result storage moxlib:string/split check byte 1 run function moxlib:string/split/check with storage moxlib:api/string/split
execute if data storage moxlib:string/split {check:-1b} run function moxlib:string/split/concatenate with storage moxlib:string/split concatenate

function moxlib:string/split/iterate