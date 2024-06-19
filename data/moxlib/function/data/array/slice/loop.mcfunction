execute if score $index moxlib.data.array.slice >= $start moxlib.data.array.slice if score $index moxlib.data.array.slice < $end moxlib.data.array.slice run data modify storage moxlib:api/data/array/slice output append from storage moxlib:api/data/array/slice target[0]
data remove storage moxlib:api/data/array/slice target[0]
scoreboard players add $index moxlib.data.array.slice 1
execute if score $index moxlib.data.array.slice < $end moxlib.data.array.slice if data storage moxlib:api/data/array/slice target[0] run function moxlib:data/array/slice/loop
