function moxlib:helpers/common/setup

data remove storage moxlib:api/helpers/inventory/compact output
data modify storage moxlib:helpers/inventory/compact target set from storage moxlib:api/helpers/inventory/compact target
function moxlib:helpers/inventory/compact/iterate

function moxlib:helpers/common/cleanup