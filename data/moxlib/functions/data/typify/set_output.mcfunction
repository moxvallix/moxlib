execute if data storage moxlib:api/data/typify {success:false} run data remove storage moxlib:api/data/typify output
execute if data storage moxlib:api/data/typify {success:true} run data modify storage moxlib:api/data/typify output.value set from storage moxlib:api/data/typify target
