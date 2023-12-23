data modify storage moxlib:data/array/join args.string set from storage moxlib:api/data/array/join target[0]
data modify storage moxlib:data/array/join args.separator set from storage moxlib:api/data/array/join separator
data remove storage moxlib:api/data/array/join target[0]
data modify storage moxlib:data/array/join args.next set from storage moxlib:api/data/array/join target[0]