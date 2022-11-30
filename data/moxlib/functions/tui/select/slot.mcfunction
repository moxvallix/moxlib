scoreboard players set $size moxlib.tui.select 0

execute store result score $current moxlib.tui.slot run data get storage moxlib:tui/slot current.slot
function #moxlib:api/tui/select/slot