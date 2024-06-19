data remove storage moxlib:api/data/paginate target[0]
scoreboard players remove $to_remove moxlib.data.paginate 1
execute if score $to_remove moxlib.data.paginate matches 1.. run function moxlib:data/paginate/remove