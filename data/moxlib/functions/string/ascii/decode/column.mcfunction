execute if score $x moxlib.string.ascii.decode matches 1.. run data remove storage moxlib:string/ascii/decode columns[0]
execute if score $x moxlib.string.ascii.decode matches 1.. run scoreboard players remove $x moxlib.string.ascii.decode 1
execute if score $x moxlib.string.ascii.decode matches 1.. run function moxlib:string/ascii/decode/column