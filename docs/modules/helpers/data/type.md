# Type

| Information                            |                                               |
-----------------------------------------|-----------------------------------------------|
| :material-file-document: **Type**      | [Data Function](/types/utility#data-function) |
| :material-code-braces: **Namespace**   | `moxlib:api/helpers/data/type`                |
| :material-minecraft: **Versions**      | 1.15+                                         |

## Overview
Returns the [Type](/types) of the given data.

!!! example
    ``` mcfunction
    data modify storage moxlib:api/helpers/data/type target set value ["hello","world"]
    function moxlib:api/helpers/data/type
    ```
    ``` snbt title="Output of storage moxlib:api/helpers/data/type"
    {
      output: "array"
    }
    ```

## API
### Expects
- Any `target`

### Returns
- [String](/types#string) `output`

| target             | output   |
|--------------------|----------|
| {a:1,b:2}          | "object" |
| ["a","b"]          | "array"  |
| "hello"            | "string" |
| '{"text":"hello"}' | "json"*  |
| 12b                | "byte"   |
| 132s               | "short"  |
| 420                | "integer"|
| 487l               | "long"   |
| 43.48f             | "float"  |
| 684.38d            | "double" |

**JSON input must be a valid [Raw JSON Text](https://minecraft.fandom.com/wiki/Raw_JSON_text_format) component to be detected.*