data modify storage moxlib:api/data/collect output set value {match: [], remain: []}
$data modify storage moxlib:api/data/collect output.remain set value $(target)
$execute store success storage moxlib:api/data/collect success byte 1 run data modify storage moxlib:api/data/collect output.match append from storage moxlib:api/data/collect output.remain[$(key)]
$data remove storage moxlib:api/data/collect output.remain[$(key)]