# Paginate
`moxlib:api/data/paginate`

## Overview
Groups records in `target` based on the size of `count`. Returns the grouped records based on the value of `page`.

Use [Calculate Pages](/modules/helpers/data/calculate_pages) to calculate the amount of pages `target` has.

!!! example
    In this example, there are nine records in `target`. The amount of records per page, `count`, is set to 3,
    and the page number itself, `page`, is 2. As such, it returns an `output` of`[4,5,6]`.
    ``` mcfunction
    data modify storage moxlib:api/data/paginate target set value [1,2,3,4,5,6,7,8,9]
    data modify storage moxlib:api/data/paginate count set value 3
    data modify storage moxlib:api/data/paginate page set value 2
    function moxlib:api/data/paginate
    ```
    ``` snbt title="Output of storage moxlib:api/data/paginate"
    {
      output: [4,5,6]
    }
    ```
    If `page` was 1, `output` would be `[1,2,3]`, and if it was 3, `output` would be `[7,8,9]`.

    If `count` was 4, `output` would be `[5,6,7,8]`.

## API
### Expects
- [Array](/types#array) `target`
- [Numeric](/types#numeric) `count`
- [Numeric](/types#numeric) `page`

### Returns
- [Array](/types#array) `output`

The given page of `target`.