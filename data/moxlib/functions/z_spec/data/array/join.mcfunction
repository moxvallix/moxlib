data modify storage moxlib:test/it describes set value "An array joined with a blank separator"

  data merge storage moxlib:api/data/array/join {target:["Hello", ", ", "world", "!"],separator:""}

  function moxlib:api/data/array/join

  data modify storage moxlib:test/it expects set value "Hello, world!"
  data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/join output

function moxlib:api/test/perform


data modify storage moxlib:test/it describes set value "An array joined with a single character separator"

  data merge storage moxlib:api/data/array/join {target:["a","b","c","d"],separator:","}

  function moxlib:api/data/array/join

  data modify storage moxlib:test/it expects set value "a,b,c,d"
  data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/join output

function moxlib:api/test/perform


data modify storage moxlib:test/it describes set value "An array joined with a multi-character separator"

  data merge storage moxlib:api/data/array/join {target:["foo","bar","baz","qux"],separator:", "}

  function moxlib:api/data/array/join

  data modify storage moxlib:test/it expects set value "foo, bar, baz, qux"
  data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/join output

function moxlib:api/test/perform


data modify storage moxlib:test/it describes set value "An array with only one entry being joined"

  data merge storage moxlib:api/data/array/join {target:["42"],separator:":"}

  function moxlib:api/data/array/join

  data modify storage moxlib:test/it expects set value "42"
  data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/join output

function moxlib:api/test/perform


data modify storage moxlib:test/it describes set value "An empty array being joined"

  data merge storage moxlib:api/data/array/join {target:[],separator:"!"}

  function moxlib:api/data/array/join

  data modify storage moxlib:test/it expects set value ""
  data modify storage moxlib:test/it receives set from storage moxlib:api/data/array/join output

function moxlib:api/test/perform
