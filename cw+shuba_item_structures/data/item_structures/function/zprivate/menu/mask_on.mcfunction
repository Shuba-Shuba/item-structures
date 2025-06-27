scoreboard players set masked item_structures 1
execute store result score #sendFeedback item_structures run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function item_structures:zprivate/reset_gamerules 1t
function item_structures:zprivate/menu/config
function item_structures:zprivate/menu/sound