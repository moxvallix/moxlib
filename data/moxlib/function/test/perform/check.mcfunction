data modify storage moxlib:test/private temp.expects set from storage moxlib:test/it expects
data modify storage moxlib:test/private temp.receives set from storage moxlib:test/it receives

execute store result storage moxlib:test/private temp.result byte 1 run data modify storage moxlib:test/private temp.expects set from storage moxlib:test/private temp.receives

execute if data storage moxlib:test/private {temp:{result:true}} run data modify storage moxlib:test/private check set value false
execute if data storage moxlib:test/private {temp:{result:false}} run data modify storage moxlib:test/private check set value true

execute if data storage moxlib:test/it expects unless data storage moxlib:test/it receives run data modify storage moxlib:test/private check set value false