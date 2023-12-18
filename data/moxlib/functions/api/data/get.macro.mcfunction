$data modify storage moxlib:api/data/get target set value $(target)
data remove storage moxlib:api/data/get output
$data modify storage moxlib:api/data/get output append from storage moxlib:api/data/get target[$(key)]
execute store success storage moxlib:api/data/get success byte 1 run data modify storage moxlib:api/data/get output set from storage moxlib:api/data/get output[0]