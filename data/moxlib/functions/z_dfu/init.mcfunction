execute store result score $major moxlib.version run data get storage moxlib:version major
execute store result score $minor moxlib.version run data get storage moxlib:version minor
execute store result score $patch moxlib.version run data get storage moxlib:version patch

execute if score $major moxlib.version matches 0 run function moxlib:z_dfu/v0/init