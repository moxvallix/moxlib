summon armor_stand ~ -64 ~ {NoGravity:true,Invisible:true,UUID:[I;798793759,783795,987995730,79375953]}
execute unless data storage moxlib:api/helpers/inventory/give target.Count run data modify storage moxlib:api/helpers/inventory/give target.Count set value 1b
data modify entity 2f9ca01f-000b-f5b3-3ae3-9e5204bb2e51 HandItems[0] set from storage moxlib:api/helpers/inventory/give target