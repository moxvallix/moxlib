# 7550ba79-ffa8-5b73-0006-a95dfff1b6c4
summon marker ~ ~ ~ {UUID:[I;1968224889,-5743757,436573,-936252],Tags:["__test"]}

execute store success storage moxlib:helpers/data/type success byte 1 run data modify entity 7550ba79-ffa8-5b73-0006-a95dfff1b6c4 Tags append from storage moxlib:api/helpers/data/type target
kill 7550ba79-ffa8-5b73-0006-a95dfff1b6c4

execute if data storage moxlib:helpers/data/type {success:true} run data modify storage moxlib:api/helpers/data/type output set value "string"