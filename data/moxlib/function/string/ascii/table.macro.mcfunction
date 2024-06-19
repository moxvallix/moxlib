$data modify storage moxlib:string/ascii/table temp set value $(target)
data modify storage moxlib:api/string/ascii/table output append from storage moxlib:string/ascii/table temp[]