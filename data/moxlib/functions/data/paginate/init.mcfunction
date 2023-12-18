function moxlib:data/common/setup
function moxlib:data/paginate/setup

data modify storage moxlib:api/helpers/data/calculate_pages target set from storage moxlib:api/data/paginate target
data modify storage moxlib:api/helpers/data/calculate_pages count set from storage moxlib:api/data/paginate count

function moxlib:api/helpers/data/calculate_pages

execute store result score $page moxlib.data.paginate run data get storage moxlib:api/data/paginate page
execute store result score $count moxlib.data.paginate run data get storage moxlib:api/data/paginate count
execute store result score $page_total moxlib.data.paginate run data get storage moxlib:api/helpers/data/calculate_pages output

execute if score $page moxlib.data.paginate > $page_total moxlib.data.paginate run scoreboard players operation $page moxlib.data.paginate = $page_total moxlib.data.paginate

scoreboard players operation $to_remove moxlib.data.paginate = $page moxlib.data.paginate
scoreboard players remove $to_remove moxlib.data.paginate 1
scoreboard players operation $to_remove moxlib.data.paginate *= $count moxlib.data.paginate

execute if score $to_remove moxlib.data.paginate matches 1.. run function moxlib:data/paginate/remove
function moxlib:data/paginate/append

function moxlib:data/paginate/cleanup
function moxlib:data/common/cleanup