data modify storage moxlib:test/it describes set value "An array reversed"

  data merge storage moxlib:api/data/array/reverse {target:["Hello", ", ", "world", "!"]}

  function moxlib:api/data/array/reverse

  data modify storage moxlib:test/it expects set value ["!", "world", ", ", "Hello"]
  data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/reverse output

function moxlib:api/test/perform


data modify storage moxlib:test/it describes set value "An array with one element reversed"

  data merge storage moxlib:api/data/array/reverse {target:["foo"]}

  function moxlib:api/data/array/reverse

  data modify storage moxlib:test/it expects set value ["foo"]
  data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/reverse output

function moxlib:api/test/perform


data modify storage moxlib:test/it describes set value "An array with no elements reversed"

  data merge storage moxlib:api/data/array/reverse {target:[]}

  function moxlib:api/data/array/reverse

  data modify storage moxlib:test/it expects set value []
  data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/reverse output

function moxlib:api/test/perform