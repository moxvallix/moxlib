data remove storage moxlib:api/data/array/slice target
data remove storage moxlib:api/data/array/slice start
data remove storage moxlib:api/data/array/slice end

execute if data storage moxlib:api/data/array/slice {success:false} run data remove storage moxlib:api/data/array/slice output

execute unless data storage moxlib:api/data/array/slice {success:false} run data remove storage moxlib:api/data/array/slice error
execute unless data storage moxlib:api/data/array/slice {success:false} run data modify storage moxlib:api/data/array/slice success set value true
