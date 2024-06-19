execute store result score $size moxlib.helpers.data.calculate_pages run data get storage moxlib:api/helpers/data/calculate_pages target
execute store result score $count moxlib.helpers.data.calculate_pages run data get storage moxlib:api/helpers/data/calculate_pages count

scoreboard players operation $total moxlib.helpers.data.calculate_pages = $size moxlib.helpers.data.calculate_pages
scoreboard players operation $total moxlib.helpers.data.calculate_pages /= $count moxlib.helpers.data.calculate_pages
scoreboard players add $total moxlib.helpers.data.calculate_pages 1

execute store result storage moxlib:api/helpers/data/calculate_pages output int 1 run scoreboard players get $total moxlib.helpers.data.calculate_pages

data remove storage moxlib:api/helpers/data/calculate_pages target
data remove storage moxlib:api/helpers/data/calculate_pages count