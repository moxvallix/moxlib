# Data

Minecraft provides a very limited interface for working with NBT data, through the `/data` and `/execute` commands.

Hard coding a key/value pair is easy with these commands, but dynamic key/value pairs are impossible. The key always
has to be hardcoded, it cannot be set from another data source. Values, however, can be dynamically set.

Key/value pairs are incredibly useful, however, and as such, Moxlib provides a way to achieve the same results, but
with an array of nbt objects. As long as the objects in the array all have the same key as an identifier, the value
field can then be compared, and be used to retrieve the rest of the data in the object.

The functions [Set](/modules/data/set), [Get](/modules/data/get) and [Collect](/modules/data/collect) provide ways
to create and use key/value pairs dynamically.

!!! warning "Recursive Functions"
    The Data module uses recursive functions to iterate through arrays of data. Depending on the size of the
    array, this can rack up quite a large command count.

    Make sure to keep an eye on how many commands execute from a given input, and consider upping `maxCommandChainLength`.

??? danger "Resetting the Lock"
    In rare cases, Minecraft can try to run a function before another has finished, which can cause issues
    when both functions modify the same data, resulting in an invalid outcome for one of the functions.

    As such, a lock value is set when a function is first run, and removed when it has completed. Whilst this lock
    value is set, other functions (within the same module) cannot be run.

    If a function failed to finish properly, it's possible that this lock can be stuck on. Moxlib schedules a function to
    turn it off after a tick, as a pre-caution, but if this were to fail as well, then the lock could be stuck permanently on.

    As such, the function `moxlib:api/data/reset` exists to remove this lock. Use only in cases of a stuck lock.