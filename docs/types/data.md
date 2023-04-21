# Data Types
The following is a list of types referenced in the Moxlib API. These are not the same as NBT types; they are largely
simplified aliases for them instead, for ease of use and understanding.

## Object
`{a:1,b:2,c:3}`

Objects are collections of data organised into key/value pairs. They are contained within an opening and closing
curly bracket (`{` and `}`). Keys and values are seperated by a colon (`:`), such as `key:value`.

Each key/value pair record within the collection is seperated by a comma (`,`).

## Array
`[1,2,3,4]`

Arrays are ordered collections of data, contained within an opening and closing square bracket (`[` and `]`).
Each record withing the collection is seperated by a comma (`,`).

Within the documentation, data listed as an Array will often have another data type listed in front of it,
dictating the type of what the values within the array should be. For example,
[String Array](#array) is an array containing only [Strings](#string).

Arrays may only contain a single type of data.

## String
`"Hello, World!"`

Strings are a collection of characters, contained between two quotes (either `'` or `"`).

### Json
`'{"text":"Hello, World!"}'`

Json is a subset of String, of which the String is also a valid [Raw JSON Text Component](https://minecraft.fandom.com/wiki/Raw_JSON_text_format).

It is used for formatting text.

## Numeric
The following types are numeric, and as such, can retrieved and stored into the scoreboard.

Any reference to [Numeric](#numeric-types) will accept any of the following types.

### Byte
`12b`

A number between -128 and 127. Has a suffix of `b`.

#### Boolean
`true`

Internally, a Boolean and a Byte are stored identically. However, a Boolean can only be between 0 and 1.

Optionally, `true` and `false` can also be used in this type, for added readability.

### Short
`1337s`

A number between -32,768 and 32,767. Has a suffix of `s`.

### Integer
`123456`

A number between -2,147,483,648 and 2,147,483,647. Has no suffix.

### Long
`8489748397l`

A number between -9,223,372,036,854,775,808 and 9,223,372,036,854,775,807. Has a suffix of `l`.

### Float
`30.68f`

See [NBT Format - Data Types](https://minecraft.fandom.com/wiki/NBT_format#Data_types). Has a suffix of `f`.

### Double
`847.093D`

See [NBT Format - Data Types](https://minecraft.fandom.com/wiki/NBT_format#Data_types). Has a suffix of `D`.

## Score
A score on a scoreboard objective. Same value range as [Integer](#integer).