execute store result score $is_integer moxlib.data.typify run data modify storage moxlib:data/private/typify typed_arrays.integer_array append from storage moxlib:api/data/typify target

execute store result score $is_string moxlib.data.typify run data modify storage moxlib:data/private/typify typed_arrays.string_array append from storage moxlib:api/data/typify target

execute store result score $is_array moxlib.data.typify run data modify storage moxlib:data/private/typify typed_arrays.array_array append from storage moxlib:api/data/typify target

execute store result score $is_object moxlib.data.typify run data modify storage moxlib:data/private/typify typed_arrays.object_array append from storage moxlib:api/data/typify target
