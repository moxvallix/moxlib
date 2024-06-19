# Lock data, and schedule reset in case of function failure
data modify storage moxlib:data/private lock set value true
schedule function moxlib:api/data/reset 1t