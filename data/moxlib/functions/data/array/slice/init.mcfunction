function moxlib:data/common/setup
function moxlib:data/array/slice/setup

execute unless data storage moxlib:api/data/array/slice {success:false} run function moxlib:data/array/slice/loop

function moxlib:data/array/slice/cleanup
function moxlib:data/common/cleanup
