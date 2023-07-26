# Index = ((Row * 16) + Column)

scoreboard players set $row moxlib.string.ascii.encode 0
scoreboard players set $column moxlib.string.ascii.encode 0

data modify storage moxlib:string/ascii/encode rows set from storage moxlib:api/string/ascii/table output

function moxlib:string/ascii/encode/row
data modify storage moxlib:string/ascii/encode columns set from storage moxlib:string/ascii/encode rows[0]
execute if data storage moxlib:string/ascii/encode columns[] run function moxlib:string/ascii/encode/column

scoreboard players operation $output moxlib.string.ascii.encode = $row moxlib.string.ascii.encode
scoreboard players operation $output moxlib.string.ascii.encode *= $16 moxlib.api.math.constants
scoreboard players operation $output moxlib.string.ascii.encode += $column moxlib.string.ascii.encode

execute store result storage moxlib:api/string/ascii/encode output byte 1 run scoreboard players get $output moxlib.string.ascii.encode