data modify storage moxlib:test/it describes set value "Compare different"

  data modify storage moxlib:api/data/legacy/compare target set value {id:4s}
  data modify storage moxlib:api/data/legacy/compare key set value {id:3s}

  function moxlib:api/data/legacy/compare

  data modify storage moxlib:test/it expects set value {result:false}
  data modify storage moxlib:test/it receives.result set from storage moxlib:api/data/legacy/compare output

function moxlib:api/test/perform
