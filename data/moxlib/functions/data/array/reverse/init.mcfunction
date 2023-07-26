function moxlib:data/common/setup

data modify storage moxlib:api/data/array/reverse output set value []

function moxlib:data/array/reverse/iterate

data remove storage moxlib:api/data/array/reverse target

function moxlib:data/common/cleanup