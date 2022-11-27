data remove storage moxlib:tui/private border.left
data remove storage moxlib:tui/private border.right
data remove storage moxlib:tui/private border.padding

function moxlib:tui/render/display/border/calculate
data modify storage moxlib:tui/private border.left append from storage moxlib:tui/page border.bottom.left
function moxlib:tui/render/display/border/left
data modify storage moxlib:tui/private border.left append from storage moxlib:tui/page border.title.left
data modify storage moxlib:tui/private border.right append from storage moxlib:tui/page border.title.right
function moxlib:tui/render/display/border/right
data modify storage moxlib:tui/private border.right append from storage moxlib:tui/page border.bottom.right

function moxlib:tui/render/display/border/horizontal