kill @e[tag=saver]
kill @e[tag=loader]

title @s times 10 80 10
title @s title {"text":"Process Canceled!","color":"red"}
title @s subtitle {"text":"Memory may be corrupted","color":"dark_red"}

bossbar set progress visible false

execute store result score #sendFeedback item_structures run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function item_structures:zprivate/reset_gamerules 1t

function item_structures:zprivate/menu/sound