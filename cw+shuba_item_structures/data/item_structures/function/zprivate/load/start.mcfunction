scoreboard players set @s commands 0

execute store result score system vect_x run data get storage item_structures load.size[0]
execute store result score system vect_y run data get storage item_structures load.size[1]
execute store result score system vect_z run data get storage item_structures load.size[2]

scoreboard players operation @s vect_x = system vect_x
scoreboard players operation @s vect_y = system vect_y
scoreboard players operation @s vect_z = system vect_z

data remove storage item_structures forceload
data modify storage item_structures forceload.x set from storage item_structures load.size[0]
data modify storage item_structures forceload.z set from storage item_structures load.size[2]
execute at @n[tag=start_point] run function item_structures:zprivate/forceload with storage item_structures forceload

function item_structures:zprivate/load/move