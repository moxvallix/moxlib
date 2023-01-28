# Entity: 0e4b74a8-85a3-4d54-b220-6ba1113480b2
summon armor_stand ~ ~ ~ {Invisible:true,UUID:[I;239826088,-2052895404,-1306498143,288653490]}
loot replace entity 0e4b74a8-85a3-4d54-b220-6ba1113480b2 weapon.mainhand loot moxlib:string/newline

data modify storage moxlib:api/string/newline output set from entity 0e4b74a8-85a3-4d54-b220-6ba1113480b2 HandItems[0].tag.pages[0]

kill 0e4b74a8-85a3-4d54-b220-6ba1113480b2