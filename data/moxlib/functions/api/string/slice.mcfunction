$data modify storage moxlib:api/string/slice target set value "$(target)"
$data modify storage moxlib:string/slice end set value "$(end)"
$execute if data storage moxlib:string/slice {end:"_"} run function moxlib:string/slice/without_end {start:$(start)}
$execute unless data storage moxlib:string/slice {end:"_"} run function moxlib:string/slice/with_end {start:$(start),end:$(end)}
