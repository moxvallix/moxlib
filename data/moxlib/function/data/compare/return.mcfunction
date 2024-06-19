execute if data storage moxlib:data/private/compare result run data modify storage moxlib:api/data/compare success set value true
execute if data storage moxlib:data/private/compare {result:true} run data modify storage moxlib:api/data/compare output set value false
execute if data storage moxlib:data/private/compare {result:false} run data modify storage moxlib:api/data/compare output set value true
function moxlib:data/compare/cleanup