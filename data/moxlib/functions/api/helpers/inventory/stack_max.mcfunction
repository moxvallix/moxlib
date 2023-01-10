# Entity: 0f43340f-83bd-4254-8a2b-5ae000d659cb
summon armor_stand ~ ~ ~ {UUID:[I;256062479,-2084748716,-1976870176,14047691],HandItems:[{id:"minecraft:debug_stick",Count:1b}],Marker:1b,Invisible:1b}
data modify entity 0f43340f-83bd-4254-8a2b-5ae000d659cb HandItems[0].id set from storage moxlib:api/helpers/inventory/stack_max target

item modify entity 0f43340f-83bd-4254-8a2b-5ae000d659cb weapon.mainhand moxlib:helpers/inventory/stack_max/count
data modify storage moxlib:api/helpers/inventory/stack_max output set from entity 0f43340f-83bd-4254-8a2b-5ae000d659cb HandItems[0].Count

kill 0f43340f-83bd-4254-8a2b-5ae000d659cb