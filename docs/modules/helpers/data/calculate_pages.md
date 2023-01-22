# Calculate Pages
`moxlib:api/helpers/data/calculate_pages`

## Overview
Calculates the amount of pages `target` array has, with a page size of `count`.

Meant for use with [Paginate](/modules/data/paginate).

!!! example
    ``` mcfunction
    data modify storage moxlib:api/helpers/data/calculate_pages target set value [1,2,3,4,5,6,7,8,9]
    data modify storage moxlib:api/helpers/data/calculate_pages count set value 3
    function moxlib:api/helpers/data/calculate_pages
    ```
    ``` snbt title="Output of storage moxlib:api/helpers/data/calculate_pages"
    {
      output: 3
    }
    ```

## API
### Expects
- [Array](/types#array) `target`
- [Numeric](/types#numeric) `count`

### Returns
- [Integer](/types#integer) `output`

Total amount of pages, for the given `target`.