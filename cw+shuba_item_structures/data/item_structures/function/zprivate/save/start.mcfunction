scoreboard players set @s commands 0
data remove storage minecraft:item_structures save

data merge storage item_structures {save:{size:[0,0,0],blocks:[I;]}}
execute store result storage item_structures save.size[0] int 1 run scoreboard players get system vect_x
execute store result storage item_structures save.size[1] int 1 run scoreboard players get system vect_y
execute store result storage item_structures save.size[2] int 1 run scoreboard players get system vect_z
tellraw @a ["size: ",{nbt:"save.size",storage:"item_structures"}]
scoreboard players operation total vect_x = system vect_x
scoreboard players operation total vect_x *= system vect_y
scoreboard players operation total vect_x *= system vect_z
tellraw @a ["volume: ",{score:{name:"total",objective:"vect_x"}}," blocks"]
scoreboard players operation total vect_x *= #100 constant
scoreboard players operation total vect_x /= .max_export_volume constant
tellraw @a [{score:{name:"total",objective:"vect_x"}},"% of max recommended export volume (",{score:{name:".max_export_volume",objective:"constant"}}," blocks)"]
execute if score total vect_x matches 100.. run tellraw @a [{color:"yellow",text:"NOTICE: structure is really big. after saving it, we'll tell you if it's too big to export or not. but it's probably fine - especially if you have large areas with all one block, including air."}]

data modify storage item_structures prev set value -1
scoreboard players set same_count commands 0

scoreboard players operation @s vect_x = system vect_x
scoreboard players operation @s vect_y = system vect_y
scoreboard players operation @s vect_z = system vect_z

data remove storage item_structures forceload
data modify storage item_structures forceload.x set from storage item_structures load.size[0]
data modify storage item_structures forceload.z set from storage item_structures load.size[2]
execute at @n[tag=start_point] run function item_structures:zprivate/forceload with storage item_structures forceload

#execute if score save_entities item_structures matches 1 run function item_structures:zprivate/save/entities

function item_structures:zprivate/save/move