data remove storage moxlib:api/data/set output
$data modify storage moxlib:api/data/set output set value $(target)
$execute store success storage moxlib:api/data/set success byte 1 run data modify storage moxlib:api/data/set output[$(key)] merge value $(data)