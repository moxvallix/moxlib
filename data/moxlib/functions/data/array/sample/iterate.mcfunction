scoreboard players remove $iterate moxlib.data.array.sample 1
data modify storage moxlib:api/alias/random start set value 0
execute store result storage moxlib:api/alias/random end int 1 run data get storage moxlib:api/data/array/sample target

function moxlib:api/alias/random
function moxlib:data/array/sample/index with storage moxlib:api/alias/random

execute if score $iterate moxlib.data.array.sample matches 1.. if data storage moxlib:api/data/array/sample target[] run function moxlib:data/array/sample/iterate