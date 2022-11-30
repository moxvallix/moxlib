# Lock data, and schedule reset in case of function failure
data modify storage moxlib:tui/private lock set value true
schedule function moxlib:api/tui/reset 1t

function #moxlib:api/tui/init