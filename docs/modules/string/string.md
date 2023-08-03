# String
## Functions for working with strings

Moxlib provides a set of functions for working with strings, thanks to the changes made in 23w03a.

As such, these functions require snapshot 23w03a+ (1.19.4+) to function.

## API
### To Array
Turns a given string into an array of characters.

**Function:** `moxlib:api/string/to_array`  
**Expects:**
- `target` -- any string

**Returns:**
- `output` -- an array of characters in that string, in order

Example:
```
/data modify storage moxlib:api/string/to_array target set value "Hello, World!"
/function moxlib:api/string/to_array
/data get storage moxlib:api/string/to_array
---
{
  output: ["H","e","l","l","o",","," ","W","o","r","l","d","!"]
}
```

### From Array
Turns a given array of strings into a single joined string.

**Experimental:** Requires [Moxlib Exp](https://github.com/moxvallix/moxlib-exp).

**Function:** `moxlib:api/string/from_array`  
**Expects:**
- `target` -- an array of strings

**Returns:**
- `output` -- a single string

Unfortunately, due to current limitations, this function cannot run in the same tick
as it is executed. As such, when it is done, it will call `#moxlib:api/string/from_array/finished`
to allow you to use the output.

Example:
```
/data modify storage moxlib:api/string/from_array target set value ["Hello, ","World!"]
/function moxlib:api/string/from_array

# After #moxlib:api/string/from_array/finished is called
/data get storage moxlib:api/string/to_array
---
{
  output: "Hello, World!"
}
```

### Filter
Returns false if the given key is within the given target string array, otherwise true.

**Function:** `moxlib:api/string/filter`  
**Expects:**  
- `target` -- an array of strings
- `key` -- a string to compare with

**Returns:**
- `output` -- true if the string is not in target, false if it is.

Example:
```
/data modify storage moxlib:api/string/filter target set value ["a","b","c"]
/data modify storage moxlib:api/string/filter key set value "d"
/function moxlib:api/string/filter

/data get storage moxlib:api/string/filter
---
{
  output: true
}
```

### Resolve
Resolves the given JSON text string, as the executing entity.

**Function:** `moxlib:api/string/resolve`  
**Expects:**  
- `target` -- a JSON text string

**Returns:**
- `output` -- resolved JSON text string


### Reset
Resets the lock, in the unlikely case it gets stuck.

**Function:** `moxlib:api/string/reset`  
**Expects:** No value expected  
**Returns:** No value returned