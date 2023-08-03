$execute unless data storage moxlib:string/split concatenate{suffix:"$(key)"} run return -1

data modify storage moxlib:api/string/split output append from storage moxlib:string/split concatenate.target
data modify storage moxlib:string/split concatenate.target set value ""