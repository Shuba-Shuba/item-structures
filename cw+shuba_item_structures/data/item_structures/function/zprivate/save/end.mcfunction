title @a times 10 80 10
title @a title {"text":"Structure Saved","color":"yellow"}
title @a subtitle {"text":"Ready for transfer!","color":"gray"}
kill @e[tag=saver]

bossbar set progress visible false

data remove storage item_structures forceload
data modify storage item_structures forceload.x set from storage item_structures save.size[0]
data modify storage item_structures forceload.z set from storage item_structures save.size[2]
execute at @n[tag=start_point] run function item_structures:zprivate/forceunload with storage item_structures forceload

execute store result score bytes commands run data get storage item_structures save.blocks
scoreboard players operation bytes commands *= #4 constant
execute if score bytes commands matches ..999 run return run tellraw @a ["structure data size: ",{score:{name:"bytes",objective:"commands"}}," B"]
scoreboard players operation kB commands = bytes commands
scoreboard players operation kB commands /= #1000 constant
scoreboard players operation bytes commands %= #1000 constant
scoreboard players operation bytes commands /= #100 constant
tellraw @a ["structure data size: ",{score:{name:"kB",objective:"commands"}},".",{score:{name:"bytes",objective:"commands"}}," kB"]
execute if score kB commands matches 1000.. run tellraw @a [{color:"red",text:"WARNING: structure is most likely too large to export! exporting anyway may result in creating an item with too much data for minecraft to handle. continue at own risk."}]