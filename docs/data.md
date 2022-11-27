# Data
## Functions for working with Data

Moxlib provides a set of functions for dealing with arrays of NBT data.

Mainly, this API provides a way to retrieve and store data in these arrays, based
on a `key` object.

## API
### Get
Retrieves the data matching the given key.

**Function:** `moxlib:api/data/get`  
**Expects:**
- `target` -- an array of NBT objects
- `key` -- an NBT object
**Returns:**
- `output` -- the first object to match with the key
- `success` -- true if an object could be found, otherwise false

Example:
```
/data modify storage moxlib:api/data/get target set value [{id:1,a:1},{id:2,b:1},{id:3,c:1}]
/data modify storage moxlib:api/data/get key set value {id:2}
/function moxlib:api/data/get
/data get storage moxlib:api/data/get
---
{
  output: {id:2,b:1},
  success: true
}
```

### Set
Sets the given data into the target array, either by changing an existing record,
or appending the new record to the end. Returns the modified array.

**Function:** `moxlib:api/data/set`  
**Expects:**
- `target` -- an array of NBT objects
- `key` -- an NBT object
- `data` -- an NBT object
**Returns:**
- `output` -- the modified target array
- `success` -- true if modification was successful, otherwise false

Example:
```
/data modify storage moxlib:api/data/set target set value [{id:1,a:1},{id:2,b:1},{id:3,c:1}]
/data modify storage moxlib:api/data/set key set value {id:2}
/data modify storage moxlib:api/data/set data set value {b:2}
/function moxlib:api/data/set
/data get storage moxlib:api/data/set
---
{
  output: [{id:1,a:1},{id:2,b:2},{id:3,c:1}],
  success: true
}
```

### Compare
Checks to see if the given `key` is in the given `target`.

**Function:** `moxlib:api/data/compare`  
**Expects:**
- `target` -- an NBT object
- `key` -- an NBT object
**Returns:**
- `output` -- true if `target` contains `key`, otherwise false
- `success` -- true if comparison was successful, otherwise false

Example:
```
/data modify storage moxlib:api/data/compare target set value {hello:1b,a:1,b:2}
/data modify storage moxlib:api/data/compare key set value {hello:1b}
/function moxlib:api/data/compare
/data get storage moxlib:api/data/compare
---
{
  output: true,
  success: true
}
```

### Reset
Resets the lock, in the unlikely case it gets stuck.

**Function:** `moxlib:api/data/reset`  
**Expects:** No value expected  
**Returns:** No value returned