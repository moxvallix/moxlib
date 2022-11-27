# Test
## Functions for testing other functions

Moxlib provides a test suite, for verifying a function provides the correct output.

The syntax of the test suite is inspired by [RSpec](https://rspec.info/).

If you have multiple tests you would like to run at once, place them in functions,
then add those functions to the tag `#moxlib:test`. Each of the functions must also
call `moxlib:api/test/perform` themselves.

When you run `moxlib:api/test/start`, it will run all the tests at once, and number them.

Check `moxlib:spec` for example tests.

## API
### Perform
Checks that the `receives` tag matches the `expects` tag.

A test should first run the function needing to be tested, and set the output
of the function into the `receives` tag.

**Note** The test suite does *not* follow the same syntax as the other functions.

**Function:** `moxlib:api/test/perform`  
**Storage:** `moxlib:test/it`  
**Expects:**
- `describes` -- the name of the test, as a string
- `expects` -- the expected NBT data
- `receives` -- the data received from the function output
**Returns:** The function will tellraw to the executing player the results.

Example:
```
/function example:return_true
/data modify storage moxlib:test/it describes set value "always returns true"
/data modify storage moxlib:test/it expects set value true
/data modify storage moxlib:test/it receives set from storage example:return_true output
/function moxlib:api/test/perform
---
*1 Passed: "always returns true"*
```

### Start
Runs the tests as listed in `#moxlib:test`.

Running start with the tag `moxlib.dev` will run Moxlib's internal tests.

**Function:** `moxlib:api/test/start`  
**Expects:** No value expected  
**Returns:** No value returned

Example:
```
/function moxlib:api/test/start
---
*1 Passed: "always returns true"*
*2 Passed: "always returns false"*
*3 Failed: "should returns true"*
  - Expected: true
  - Received: false
```