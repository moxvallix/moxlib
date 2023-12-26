data modify storage moxlib:api/data/legacy/collect target set value [{collect:true,data:"foo"},{collect:false,data:"bar"},{collect:false,data:"baz"},{collect:true,data:"qux"}]
data modify storage moxlib:api/data/legacy/collect key set value {collect:true}

function moxlib:api/data/legacy/collect

data modify storage moxlib:test/it describes set value "Correctly collecting elements"
data modify storage moxlib:test/it expects set value [{collect:true,data:"foo"},{collect:true,data:"qux"}]
data modify storage moxlib:test/it receives set from storage moxlib:api/data/legacy/collect output.match

function moxlib:api/test/perform

data modify storage moxlib:api/data/legacy/collect target set value [{collect:true,data:"foo"},{collect:false,data:"bar"},{collect:false,data:"baz"},{collect:true,data:"qux"}]
data modify storage moxlib:api/data/legacy/collect key set value {collect:true}

function moxlib:api/data/legacy/collect

data modify storage moxlib:test/it describes set value "Correctly not collecting elements"
data modify storage moxlib:test/it expects set value [{collect:false,data:"bar"},{collect:false,data:"baz"}]
data modify storage moxlib:test/it receives set from storage moxlib:api/data/legacy/collect output.remain

function moxlib:api/test/perform