title @a times 10 80 10
title @a title {"text":"Structure Loaded","color":"green"}
title @a subtitle {"text":"Hope you like it :D","color":"gray"}
kill @e[tag=loader]

bossbar set progress visible false

data remove storage item_structures forceload
data modify storage item_structures forceload.x set from storage item_structures load.size[0]
data modify storage item_structures forceload.z set from storage item_structures load.size[2]
execute at @n[tag=start_point] run function item_structures:zprivate/forceunload with storage item_structures forceload