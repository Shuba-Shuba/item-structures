execute store result storage item_structures region.x int 1 run data get entity @n[tag=start_point] Pos[0]
execute store result storage item_structures region.y int 1 run data get entity @n[tag=start_point] Pos[1]
execute store result storage item_structures region.z int 1 run data get entity @n[tag=start_point] Pos[2]
execute store result storage item_structures region.dx int 1 run data get storage item_structures load.size[0]
execute store result storage item_structures region.dy int 1 run data get storage item_structures load.size[1]
execute store result storage item_structures region.dz int 1 run data get storage item_structures load.size[2]
function item_structures:zprivate/save/entities_macro with storage item_structures region