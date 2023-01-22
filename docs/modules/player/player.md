# Player
## Exposes helpful information about players

Due to Moxlib's goal of running nothing on tick by default, this module
effectively has to be "enabled". It has a single function, `moxlib:api/player/run`,
which then powers the following API. In most cases, you will want to run this function,
as `@a`, in your tick function.

This function will not work unless it is executed as a player.

```
# tick.mcfunction
/execute as @a run function moxlib:api/player/run
```

## API
### Scoreboard Objectives
`moxlib.api.player.id` -- unique player id  
`moxlib.api.player.died` -- death count of player  
`moxlib.api.player.killed` -- total kill count of player, any entity  
`moxlib.api.player.killed_player` -- count of player kills by player  
`moxlib.api.player.hotbar` -- current selected slot in the hotbar  
`moxlib.api.player.scroll` -- direction the player scrolled in the hotbar
- 0 if not scrolled that tick
- 1 if scrolled right, -1 if scrolled left
- should usually work even when scroll loop occurs (aka. scroll from slot 8 to 0)

### Predicates
`moxlib:api/player/has_died` -- true if player died that tick  
`moxlib:api/player/has_killed` -- true if player killed anything that tick  
`moxlib:api/player/has_killed_player` -- true if player killed another player that tick  
`moxlib:api/player/has_scrolled`  -- true if player scrolled that tick

### Function Tags
`#moxlib:api/player/on_death` -- run by the player on death  
`#moxlib:api/player/on_kill` -- run by the player on killing an entity  
`#moxlib:api/player/on_player_kill` -- run by the player on killing a player  
`#moxlib:api/player/on_scroll` -- run by the player on scrolling the hotbar