# Entity: 10308add-19c1-4a25-93cb-69c50cc70950
data modify storage moxlib:api/string/ascii/table output set value []
summon armor_stand ~ ~ ~ {UUID:[I;271616733,432097829,-1815385659,214370640],Small:1b,Marker:1b,Invisible:1b}

loot replace entity 10308add-19c1-4a25-93cb-69c50cc70950 weapon.mainhand loot moxlib:string/ascii
data modify storage moxlib:string/ascii/table target set from entity 10308add-19c1-4a25-93cb-69c50cc70950 HandItems[0].tag.pages[0]
function moxlib:string/ascii/table.macro with storage moxlib:string/ascii/table

kill 10308add-19c1-4a25-93cb-69c50cc70950