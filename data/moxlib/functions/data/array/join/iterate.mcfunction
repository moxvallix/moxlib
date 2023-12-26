data remove storage moxlib:api/data/array/join target[0]

$data modify storage moxlib:data/array/join args.string set value "$(string)$(separator)$(next)"

data modify storage moxlib:data/array/join args.next set from storage moxlib:api/data/array/join target[0]
execute if data storage moxlib:api/data/array/join target[] run function moxlib:data/array/join/iterate with storage moxlib:data/array/join args