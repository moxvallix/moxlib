# Lock data, and schedule reset in case of function failure
data modify storage moxlib:helpers/private lock set value true
schedule function moxlib:api/helpers/reset 1t