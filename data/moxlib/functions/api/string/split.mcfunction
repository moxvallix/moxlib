$data merge storage moxlib:api/string/split {target:"$(target)",key:"$(key)",output:[]}
execute unless data storage moxlib:string/private {lock:true} run function moxlib:string/split/init