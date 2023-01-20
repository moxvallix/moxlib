# Lock data, and schedule reset in case of function failure
data modify storage moxlib:string/private lock set value true
schedule function moxlib:api/string/reset 1t