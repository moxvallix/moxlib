function moxlib:tui/common/setup

function #moxlib:api/tui/render/init
function #moxlib:api/tui/index

execute unless data storage moxlib:tui/page template run function moxlib:tui/warnings/404

scoreboard players enable @s moxlib.tui.selection
scoreboard players set @s moxlib.tui.selection -100

function moxlib:tui/render/defaults
function moxlib:tui/render/display/json

function moxlib:tui/render/clear

function moxlib:tui/render/display/header
execute unless data storage moxlib:tui/page {border:{padding:false}} run tellraw @s {"nbt":"border.vertical","storage":"moxlib:tui/private","interpret": true}
function moxlib:tui/render/iterate
execute unless data storage moxlib:tui/page {border:{padding:false}} run tellraw @s {"nbt":"border.vertical","storage":"moxlib:tui/private","interpret": true}
function moxlib:tui/render/display/footer

function moxlib:tui/common/cleanup