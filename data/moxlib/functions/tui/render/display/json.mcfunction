data modify storage moxlib:tui/private border.prev set value '{"text":" ← ","clickEvent":{"action":"run_command","value":"/trigger moxlib.tui.selection set -1"},"hoverEvent":{"action":"show_text","value":"Previous"}}'
data modify storage moxlib:tui/private border.next set value '{"text":" → ","clickEvent":{"action":"run_command","value":"/trigger moxlib.tui.selection set -2"},"hoverEvent":{"action":"show_text","value":"Next"}}'

execute unless data storage moxlib:tui/page navigation.previous run data modify storage moxlib:tui/private border.prev set value '[{"text":""},{"text":" ♦ ","color":"gray"}]'
execute unless data storage moxlib:tui/page navigation.next run data modify storage moxlib:tui/private border.next set value '[{"text":""},{"text":" ♦ ","color":"gray"}]'

data modify storage moxlib:tui/private border.vertical set value '{"nbt":"border.format","storage":"moxlib:tui/page","interpret":true,"extra":[{"nbt":"border.vertical","storage":"moxlib:tui/page"}]}'