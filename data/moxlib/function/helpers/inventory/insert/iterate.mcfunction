function moxlib:helpers/inventory/insert/iterate/main

data remove storage moxlib:helpers/inventory/insert inventory[0]

execute if data storage moxlib:helpers/inventory/insert inventory[] run function moxlib:helpers/inventory/insert/iterate
