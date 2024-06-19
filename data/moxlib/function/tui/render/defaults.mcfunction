execute unless data storage moxlib:tui/page border.top.left run data modify storage moxlib:tui/page border.top.left set value "╔"
execute unless data storage moxlib:tui/page border.top.right run data modify storage moxlib:tui/page border.top.right set value "╗"

execute unless data storage moxlib:tui/page border.vertical run data modify storage moxlib:tui/page border.vertical set value "║"
execute unless data storage moxlib:tui/page border.horizontal run data modify storage moxlib:tui/page border.horizontal set value "═"

execute unless data storage moxlib:tui/page border.title.left run data modify storage moxlib:tui/page border.title.left set value "╣"
execute unless data storage moxlib:tui/page border.title.right run data modify storage moxlib:tui/page border.title.right set value "╠"

execute unless data storage moxlib:tui/page border.bottom.left run data modify storage moxlib:tui/page border.bottom.left set value "╚"
execute unless data storage moxlib:tui/page border.bottom.right run data modify storage moxlib:tui/page border.bottom.right set value "╝"

execute unless data storage moxlib:tui/page border.width run data modify storage moxlib:tui/page border.width set value 22b
execute unless data storage moxlib:tui/page border.format run data modify storage moxlib:tui/page border.format set value '{"text":"","color":"gold"}'

execute unless data storage moxlib:tui/page title run data modify storage moxlib:tui/page title set value "Untitled"
execute unless data storage moxlib:tui/page bullet.text run data modify storage moxlib:tui/page bullet.text set value '{"text":"[+]","color":"green"}'
execute unless data storage moxlib:tui/page bullet.gap run data modify storage moxlib:tui/page bullet.gap set value " "