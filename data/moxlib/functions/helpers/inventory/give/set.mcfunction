data modify entity @s Item set from storage moxlib:api/helpers/inventory/give target
execute unless data storage moxlib:api/helpers/inventory/give target.Count run data modify storage moxlib:api/helpers/inventory/give target.Count set value 1b
tag @s remove helper.inventory.give