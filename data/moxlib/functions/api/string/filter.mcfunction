# Entity: a96aef33-7240-467a-94f0-bc73535ced07
summon marker ~ ~ ~ {UUID:[I;-1452609741,1916814970,-1796162445,1398598919]}

data modify entity a96aef33-7240-467a-94f0-bc73535ced07 Tags set from storage moxlib:api/string/filter target
data modify storage moxlib:string/filter test set from entity a96aef33-7240-467a-94f0-bc73535ced07 Tags
data modify entity a96aef33-7240-467a-94f0-bc73535ced07 Tags append from storage moxlib:api/string/filter key

execute store success storage moxlib:api/string/filter output byte 1 run data modify storage moxlib:string/filter test set from entity a96aef33-7240-467a-94f0-bc73535ced07 Tags
kill a96aef33-7240-467a-94f0-bc73535ced07