function moxlib:data/common/setup

data modify storage moxlib:api/data/array/sample output set value []

execute store result score $iterate moxlib.data.array.sample run data get storage moxlib:api/data/array/sample amount
execute if score $iterate moxlib.data.array.sample matches 1.. run function moxlib:data/array/sample/iterate

data merge storage moxlib:api/data/array/sample {target:[],amount:0}

function moxlib:data/common/cleanup