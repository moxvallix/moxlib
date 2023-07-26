data modify storage moxlib:api/string/filter target set from storage moxlib:string/ascii/encode rows[0]
data modify storage moxlib:api/string/filter key set from storage moxlib:api/string/ascii/encode target

function moxlib:api/string/filter


execute unless data storage moxlib:api/string/filter {output:false} run data remove storage moxlib:string/ascii/encode rows[0]
execute unless data storage moxlib:api/string/filter {output:false} run scoreboard players add $row moxlib.string.ascii.encode 1
execute unless data storage moxlib:api/string/filter {output:false} if data storage moxlib:string/ascii/encode rows[] run function moxlib:string/ascii/encode/row