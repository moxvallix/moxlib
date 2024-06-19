data modify storage moxlib:api/data/paginate output append from storage moxlib:api/data/paginate target[0]
data remove storage moxlib:api/data/paginate target[0]
scoreboard players remove $count moxlib.data.paginate 1
execute if score $count moxlib.data.paginate matches 1.. run function moxlib:data/paginate/append