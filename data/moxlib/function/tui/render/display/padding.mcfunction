data modify storage moxlib:tui/private border.padding append from storage moxlib:tui/page border.horizontal
scoreboard players remove $repeat moxlib.tui.render 1
execute if score $repeat moxlib.tui.render matches 1.. run function moxlib:tui/render/display/padding