execute if score $y moxlib.string.ascii.decode matches 1.. run data remove storage moxlib:string/ascii/decode rows[0]
execute if score $y moxlib.string.ascii.decode matches 1.. run scoreboard players remove $y moxlib.string.ascii.decode 1
execute if score $y moxlib.string.ascii.decode matches 1.. run function moxlib:string/ascii/decode/row