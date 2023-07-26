data modify storage moxlib:api/data/array/reverse output prepend from storage moxlib:api/data/array/reverse target[0]
data remove storage moxlib:api/data/array/reverse target[0]

execute if data storage moxlib:api/data/array/reverse target[] run function moxlib:data/array/reverse/iterate