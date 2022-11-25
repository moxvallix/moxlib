# 7550ba79-ffa8-5b73-0006-a95dfff1b6c4
function moxlib:helpers/data/type/setup

summon marker ~ ~ ~ {UUID:[I;1968224889,-5743757,436573,-936252]}
data modify entity 7550ba79-ffa8-5b73-0006-a95dfff1b6c4 CustomName set from storage moxlib:api/helpers/data/type target

execute store success storage moxlib:helpers/data/type success byte 1 run data modify storage moxlib:helpers/data/type target set from entity 7550ba79-ffa8-5b73-0006-a95dfff1b6c4 CustomName

execute if data storage moxlib:helpers/data/type {success:false} if data entity 7550ba79-ffa8-5b73-0006-a95dfff1b6c4 CustomName run data modify storage moxlib:api/helpers/data/type output set value "json"

kill 7550ba79-ffa8-5b73-0006-a95dfff1b6c4