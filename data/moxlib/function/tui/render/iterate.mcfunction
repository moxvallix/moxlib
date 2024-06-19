data modify storage moxlib:tui/slot current set from storage moxlib:tui/page template[0]
data remove storage moxlib:tui/page template[0]

execute store result score $current moxlib.tui.slot run data get storage moxlib:tui/slot current.slot

function #moxlib:api/tui/render/slot
function moxlib:tui/render/display

execute store result score $size moxlib.tui.render run data get storage moxlib:tui/page template
execute if score $size moxlib.tui.render matches 1.. run function moxlib:tui/render/iterate