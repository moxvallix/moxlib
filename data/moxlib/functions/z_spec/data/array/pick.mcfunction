data modify storage moxlib:test/it describes set value "Successfully picking an item from an array"

  data modify storage moxlib:api/data/array/pick target set value [1,1,1,1]

  function moxlib:api/data/array/pick

  data modify storage moxlib:test/it expects set value 1
  data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/pick output

function moxlib:api/test/perform