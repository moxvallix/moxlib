data modify storage moxlib:test/it describes set value "Check includes"

  data modify storage moxlib:api/data/legacy/get target set value [{id:1s},{id:2s},{id:3s},{id:4s}]
  data modify storage moxlib:api/data/legacy/get key set value {id:3s}

  function moxlib:api/data/legacy/get

  data modify storage moxlib:test/it expects set value {success:true}
  data modify storage moxlib:test/it receives.success set from storage moxlib:api/data/legacy/get success

function moxlib:api/test/perform
