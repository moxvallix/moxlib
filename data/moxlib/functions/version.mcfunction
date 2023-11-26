data modify storage moxlib:version name set value "Moxlib"

data modify storage moxlib:version major set value 0
data modify storage moxlib:version minor set value 5
data modify storage moxlib:version patch set value 9

tellraw @a {"nbt":"name","storage":"moxlib:version","extra":[{"text":" v","extra":[{"nbt":"major","storage":"moxlib:version","extra":[{"text":"."},{"nbt":"minor","storage":"moxlib:version"},{"text":".","extra":[{"nbt":"patch","storage":"moxlib:version","extra":[{"nbt":"info","storage":"moxlib:version/experimental","interpret":true}]}]}]}]}]}