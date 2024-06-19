data modify storage moxlib:tui/slot current set from storage moxlib:tui/page template[0]
data remove storage moxlib:tui/page template[0]

execute store result score $slot moxlib.tui.select run data get storage moxlib:tui/slot current.slot
execute if score $slot moxlib.tui.select = @s moxlib.tui.selection run function moxlib:tui/select/slot

execute store result score $size moxlib.tui.select run data get storage moxlib:tui/page template

execute if score $size moxlib.tui.select matches 1.. run function moxlib:tui/select/iterate