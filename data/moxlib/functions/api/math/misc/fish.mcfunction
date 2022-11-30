# Tropical fish target logic, credit to McStacker
# pattern_color = floor(target / 16777216)
# mod1 = mod(target; 16777216)
# base_color = floor(mod1 / 65536)
# mod2 = mod(mod1; 65536)
# pattern = floor(mod2 / 256)
# mod3 = mod(mod2; 256)
# size = mod3

scoreboard players operation $pattern_color moxlib.api.math.misc.fish = $target moxlib.api.math.misc.fish
scoreboard players operation $pattern_color moxlib.api.math.misc.fish /= $16777216 moxlib.api.math.constants

scoreboard players operation $_mod1 moxlib.api.math.misc.fish = $target moxlib.api.math.misc.fish
scoreboard players operation $_mod1 moxlib.api.math.misc.fish %= $16777216 moxlib.api.math.constants

scoreboard players operation $base_color moxlib.api.math.misc.fish = $_mod1 moxlib.api.math.misc.fish
scoreboard players operation $base_color moxlib.api.math.misc.fish /= $65536 moxlib.api.math.constants

scoreboard players operation $_mod2 moxlib.api.math.misc.fish = $_mod1 moxlib.api.math.misc.fish
scoreboard players operation $_mod2 moxlib.api.math.misc.fish %= $65536 moxlib.api.math.constants

scoreboard players operation $pattern moxlib.api.math.misc.fish = $_mod2 moxlib.api.math.misc.fish
scoreboard players operation $pattern moxlib.api.math.misc.fish /= $256 moxlib.api.math.constants

scoreboard players operation $size moxlib.api.math.misc.fish = $_mod2 moxlib.api.math.misc.fish
scoreboard players operation $size moxlib.api.math.misc.fish %= $256 moxlib.api.math.constants