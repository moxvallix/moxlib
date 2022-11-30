function moxlib:tui/common/setup

function #moxlib:api/tui/select/init
function #moxlib:api/tui/index

execute unless data storage moxlib:tui/page template run function moxlib:tui/warnings/404

scoreboard players operation @s moxlib.tui.page.last = @s moxlib.tui.page

execute if score @s moxlib.tui.selection matches ..0 run function moxlib:tui/select/function
execute if score @s moxlib.tui.selection matches 0.. run function moxlib:tui/select/iterate
scoreboard players reset @s moxlib.tui.selection

execute if score @s moxlib.tui.page matches 0.. run function moxlib:tui/render/init

function moxlib:tui/common/cleanup