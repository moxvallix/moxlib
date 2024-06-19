data modify entity @s Item set from storage moxlib:api/helpers/inventory/give target
execute unless data storage moxlib:api/helpers/inventory/give target.count run data modify storage moxlib:api/helpers/inventory/give target.count set value 1b
tag @s remove helper.inventory.give