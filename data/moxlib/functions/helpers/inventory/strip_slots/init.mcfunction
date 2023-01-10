function moxlib:helpers/common/setup

data remove storage moxlib:api/helpers/inventory/strip_slots output
data remove storage moxlib:helpers/inventory/strip_slots current

function moxlib:helpers/inventory/strip_slots/iterate

data remove storage moxlib:api/helpers/inventory/strip_slots target

function moxlib:helpers/common/cleanup