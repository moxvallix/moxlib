# Data
## Functions for working with Data

Moxlib provides a set of functions for dealing with arrays of NBT data.

Mainly, this API provides a way to retrieve and store data in these arrays, based
on a `key` object.

## API
### Get
Retrieves the first piece of data matching the given key.

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

### Collect
Retrieves any data matching the given key, separating them out from the rest.

**Function:** `moxlib:api/data/collect`  
**Expects:**
- `target` -- an array of NBT objects
- `key` -- an NBT object
**Returns:**
- `output`
  - `match` -- any data matching the given key
  - `remain` -- any data not matching the given key
- `success` -- true if an object could be found, otherwise false

Example:
```
/data modify storage moxlib:api/data/get target set value [{id:1,a:1},{id:1,b:1},{id:2,c:1}]
/data modify storage moxlib:api/data/get key set value {id:1}
/function moxlib:api/data/get
/data get storage moxlib:api/data/get
---
{
  output: {
    match: [{id:1,a:1},{id:1,b:1}],
    remain: [{id:2,c:1}]
  }
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

### Paginate
Retrieves a "page" of data from an array. Best paired with
[/helpers/data/calculate_pages](/docs/helpers.md#calculate-pages)
to calculate the amount of pages in a given array.

**Function:** `moxlib:api/data/paginate`  
**Expects:**
- `target` -- an array of NBT objects
- `count` -- the number of objects to a page
- `page` -- the page of data to display
**Returns:**
- `output` -- an array of data for the given page

Example:
```
/data modify storage moxlib:api/data/paginate target set value [1,2,3,4,5,6,7,8,9]
/data modify storage moxlib:api/data/paginate count set value 3
/data modify storage moxlib:api/data/paginate page set value 2
/function moxlib:api/data/paginate
/data get storage moxlib:api/data/paginate
---
{
  output: [4,5,6]
}
```

### String to Array
Turns a given string into an array of characters. Requires snapshot 23w03a+ (1.19.4+).

**Function:** `moxlib:api/data/string_to_array`  
**Expects:**
- `target` -- any string
**Returns:**
- `output` -- an array of characters in that string, in order

Example:
```
/data modify storage moxlib:api/data/string_to_array target set value "Hello, World!"
/function moxlib:api/data/string_to_array
/data get storage moxlib:api/data/string_to_array
---
{
  output: ["H","e","l","l","o",","," ","W","o","r","l","d","!"]
}
```

### Reset
Resets the lock, in the unlikely case it gets stuck.

**Function:** `moxlib:api/data/reset`  
**Expects:** No value expected  
**Returns:** No value returned