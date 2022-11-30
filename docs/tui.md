# TUI
## Data driven Text User Interface

Moxlib provides a powerful and extensible TUI system.

It aims to be as data driven as possible. The TUI is drawn from an array of
formatted NBT objects, allowing for all manner of customisations.

Over the course of rendering the TUI, the module will call certain callback
function tags, which can be used to interpret user selection, or to dynamically
change the content of the TUI. See the callbacks section for more details.

## API
### Render
Calls the `#moxlib:api/tui/render/init` tag, then `#moxlib:api/tui/index`.
Displays the TUI to the executing player, based on the given input,
usually resolved from `#moxlib:api/tui/index`.

**Note** The TUI system does *not* follow the same syntax as the other functions.

**Function:** `moxlib:api/tui/render`  
**Storage:** `moxlib:tui/page`  
**Expects:**
- `title`: plain string, title of the TUI menu
- `template`: an array of `slot` data  
**Slot Data Format:**
  - `text`: json string defining the text of the menu option, required
  - `page`: number of page to visit on click
  - `slot`: byte from 0-8, automatically sets `trigger`, and used to retrieve data on select, recommended
  - `trigger`: json string used to set the trigger, should have empty "text" and a "run_command" trigger
  - `bullet`: used to override the bullet of the page

**Optional:**
- `navigation`
  - `previous`: number of the previous page
  - `next`: number of the next page
- `border`
  - `top`
    - `left`: plain string to draw top left border corner
    - `right`: plain string to draw top right border corner
  - `bottom`
    - `left`: plain string to draw bottom left border corner
    - `right`: plain string to draw bottom right border corner
  - `title`
    - `left`: plain string to draw before the title
    - `right`: plain string to draw after the title
  - `vertical`: plain string to draw vertical border
  - `horizontal`: plain string to draw vertical border
  - `width`: approximate width of menu, should be no larger than 50
  - `format`: json string to format the border text, should have an empty "text" value
- `bullet`:
  - `text`: json string formatting the bullet, or false to not display one
  - `gap`: plain string gap between the border and the bullet

**Returns:** The function will tellraw to the executing player the resulting TUI.

Example:
```
# pack:index
execute as @s[scores={moxlib.tui.page=1}] run function pack:pages/page_1
---
# pack:pages/page_1
data modify storage moxlib:tui/page title set value "Page 1"
data modify storage moxlib:tui/page template set value [{slot:0b,text:'{"text":"Option 1"}'},{slot:1b,text:'{"text":"Option 2"}'}]
---
/scoreboard players set @s moxlib.tui.page 1
/function moxlib:api/tui/render
---
╔══════════╣ ♦ Page 1 ♦ ╠══════════╗
║
║ [+] Option 1
║ [+] Option 2
║
╚══════════╣ ♦ Page 1 ♦ ╠══════════╝
```

### Select
Calls the `#moxlib:api/tui/select/init` tag, then `#moxlib:api/tui/index`.
Parses the executing player's selection, then renders the next page, if any. Recommended to be run on tick.

**Function:** `moxlib:api/tui/select`  
**Expects:** No value expected  
**Returns:** No value returned

## Callbacks
### Init
Called before `select` or `render`. Perfect for setting initial variables.

**Tag:** `#moxlib:api/tui/init`

### Index
Called before `select` or `render`.

Functions called by this tag should read the executing player's `moxlib.tui.page` score,
and configure the `moxlib:tui/page` data accordingly (see `render`).

**Tag:** `#moxlib:api/tui/index`

### Render - Init
Called before `render` and `#moxlib:api/tui/index`.

Perfect for setting render relevant variables.

**Tag:** `#moxlib:api/tui/render/init`

### Render - Slot
Called for each slot in the `moxlib:tui/page template` array.

Exposes the current slot as `moxlib:tui/slot current`.
Perfect for dynamically modifying the rendered data.

**Tag:** `#moxlib:api/tui/render/slot`

### Select - Init
Called before `select` and `#moxlib:api/tui/index`.

Perfect for setting select relevant variables.

**Tag:** `#moxlib:api/tui/select/init`

### Select - Slot
Called for the slot selected by the player, based on it's slot number.

Exposes the selected slot as `moxlib:tui/slot current`.
Perfect for performing certain actions based on the data in the slot.

**Tag:** `#moxlib:api/tui/select/slot`