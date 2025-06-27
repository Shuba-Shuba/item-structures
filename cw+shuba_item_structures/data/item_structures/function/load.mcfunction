data modify storage item_structures load set from storage item_structures save
execute at @e[tag=start_point] positioned ~ ~1 ~ run function item_structures:zprivate/load

execute store result score #sendFeedback item_structures run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function item_structures:zprivate/reset_gamerules 1t

function item_structures:zprivate/menu/sound