scoreboard players operation $repeat moxlib.tui.render = $border moxlib.tui.render
data remove storage moxlib:tui/private border.padding
function moxlib:tui/render/display/padding
data modify storage moxlib:tui/private border.left append from storage moxlib:tui/private border.padding[]