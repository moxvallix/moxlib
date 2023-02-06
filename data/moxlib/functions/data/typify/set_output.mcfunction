execute if data storage moxlib:api/data/typify {success:false} run data remove storage moxlib:api/data/typify output
execute if data storage moxlib:api/data/typify {success:true} run data modify storage moxlib:api/data/typify output set from storage moxlib:data/private/typify stack[-1]
