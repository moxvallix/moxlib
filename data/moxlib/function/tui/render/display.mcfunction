execute unless data storage moxlib:tui/slot current.trigger if data storage moxlib:tui/slot current.slot run function moxlib:tui/render/data/trigger
execute unless data storage moxlib:tui/slot current.trigger run data modify storage moxlib:tui/slot current.trigger set value '{"text":""}'


execute unless data storage moxlib:tui/slot current.bullet run data modify storage moxlib:tui/slot current.bullet set from storage moxlib:tui/page bullet.text
execute unless data storage moxlib:tui/slot current.gap run data modify storage moxlib:tui/slot current.gap set from storage moxlib:tui/page bullet.gap

execute if data storage moxlib:tui/slot {current:{bullet:false}} run function moxlib:tui/render/data/bulletless

execute unless data storage moxlib:tui/slot current.text run data modify storage moxlib:tui/slot current.text set value '{"text":"Missing Text"}'

tellraw @s [{"text":"","extra":[{"nbt":"border.vertical","storage":"moxlib:tui/private","interpret":true}]},{"text":" "},{"nbt":"current.trigger","storage":"moxlib:tui/slot","interpret":true,"extra":[[{"text":"","extra":[{"nbt":"current.bullet","storage":"moxlib:tui/slot","interpret":true}]},{"nbt":"current.gap","storage":"moxlib:tui/slot"},{"nbt":"current.text","storage":"moxlib:tui/slot","interpret":true}]]}]