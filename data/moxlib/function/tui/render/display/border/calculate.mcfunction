# (header - (count + gap)) / 2

execute store result score $title moxlib.tui.render run data get storage moxlib:tui/page title
execute store result score $header moxlib.tui.render run data get storage moxlib:tui/page border.width
scoreboard players set $gap moxlib.tui.render 6

scoreboard players operation $title moxlib.tui.render += $gap moxlib.tui.render

scoreboard players operation $border moxlib.tui.render = $header moxlib.tui.render
scoreboard players operation $border moxlib.tui.render -= $title moxlib.tui.render
scoreboard players operation $border moxlib.tui.render /= $2 moxlib.api.math.constants