execute if predicate moxlib:block/states/has_book/true run data modify storage moxlib:api/helpers/block/get output.state.has_book set value true
execute if predicate moxlib:block/states/has_book/false run data modify storage moxlib:api/helpers/block/get output.state.has_book set value false