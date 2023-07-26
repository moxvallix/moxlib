execute store result storage moxlib:string/ascii/encode success byte 1 run data modify storage moxlib:string/ascii/encode columns[0] set from storage moxlib:api/string/ascii/encode target

execute unless data storage moxlib:string/ascii/encode {success:false} run data remove storage moxlib:string/ascii/encode columns[0]
execute unless data storage moxlib:string/ascii/encode {success:false} run scoreboard players add $column moxlib.string.ascii.encode 1
execute unless data storage moxlib:string/ascii/encode {success:false} if data storage moxlib:string/ascii/encode columns[] run function moxlib:string/ascii/encode/column