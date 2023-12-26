function moxlib:data/common/setup
function moxlib:data/array/join/setup

execute if data storage moxlib:api/data/array/join target[0] run function moxlib:data/array/join/iterate with storage moxlib:data/array/join args

function moxlib:data/array/join/cleanup
function moxlib:data/common/cleanup