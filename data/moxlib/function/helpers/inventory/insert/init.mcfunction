function moxlib:helpers/common/setup

data modify storage moxlib:api/helpers/inventory/insert output set value {inventory:[]}

function moxlib:helpers/inventory/insert/main

data remove storage moxlib:api/helpers/inventory/insert item
data remove storage moxlib:api/helpers/inventory/insert target

function moxlib:helpers/common/cleanup