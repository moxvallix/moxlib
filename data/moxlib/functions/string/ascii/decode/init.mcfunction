# X = Index % Width
# Y = Index / Width
execute store result score $x moxlib.string.ascii.decode run data get storage moxlib:api/string/ascii/decode target
execute store result score $y moxlib.string.ascii.decode run data get storage moxlib:api/string/ascii/decode target

scoreboard players operation $x moxlib.string.ascii.decode %= $16 moxlib.api.math.constants
scoreboard players operation $y moxlib.string.ascii.decode /= $16 moxlib.api.math.constants

data modify storage moxlib:string/ascii/decode rows set from storage moxlib:api/string/ascii/table output

function moxlib:string/ascii/decode/row
data modify storage moxlib:string/ascii/decode columns set from storage moxlib:string/ascii/decode rows[0]
execute if data storage moxlib:string/ascii/decode columns[] run function moxlib:string/ascii/decode/column

data modify storage moxlib:api/string/ascii/decode output set from storage moxlib:string/ascii/decode columns[0]