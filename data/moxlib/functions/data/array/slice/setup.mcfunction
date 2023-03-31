data remove storage moxlib:api/data/array/slice success

data modify storage moxlib:api/data/array/slice output set value []
scoreboard players set $index moxlib.data.array.slice 0
execute store result score $start moxlib.data.array.slice run data get storage moxlib:api/data/array/slice start
execute store result score $end moxlib.data.array.slice run data get storage moxlib:api/data/array/slice end
execute unless score $start moxlib.data.array.slice matches 0.. run scoreboard players set $start moxlib.data.array.slice 0
execute unless score $end moxlib.data.array.slice matches 1.. unless data storage moxlib:api/data/array/slice end run scoreboard players set $end moxlib.data.array.slice 2147483647

execute if score $start moxlib.data.array.slice > $end moxlib.data.array.slice run data modify storage moxlib:api/data/array/slice success set value false
execute if score $start moxlib.data.array.slice > $end moxlib.data.array.slice run data modify storage moxlib:api/data/array/slice error set value "End cannot be less than start"
