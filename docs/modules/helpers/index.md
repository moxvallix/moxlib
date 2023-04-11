# Helpers

The Helpers module contains helpful functions that didn't warrant being in a module of their own.

They are separated into sub-modules, based generally on the functionality they provide.

Many of these functions are small time-savers; it isn't hard for a datapack developer to accomplish the features
they provide, but it saves time having them already written.

??? danger "Resetting the Lock"
    In rare cases, Minecraft can try to run a function before another has finished, which can cause issues
    when both functions modify the same data, resulting in an invalid outcome for one of the functions.

    As such, a lock value is set when a function is first run, and removed when it has completed. Whilst this lock
    value is set, other functions (within the same module) cannot be run.

    If a function failed to finish properly, it's possible that this lock can be stuck on. Moxlib schedules a function to
    turn it off after a tick, as a pre-caution, but if this were to fail as well, then the lock could be stuck permanently on.

    As such, the function `moxlib:api/helpers/reset` exists to remove this lock. Use only in cases of a stuck lock.