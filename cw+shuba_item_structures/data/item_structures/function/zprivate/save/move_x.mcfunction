execute if score @s vect_x matches 1.. run function item_structures:zprivate/save/block
execute if score @s vect_x matches 1.. run tp @s ~1 ~ ~
execute if score @s vect_x matches 1.. run scoreboard players remove @s vect_x 1

execute if score @s vect_x matches 1.. unless score @s commands >= limit commands run return run function item_structures:zprivate/save/move
execute if score @s vect_x matches ..0 unless score @s commands >= limit commands run return run function item_structures:zprivate/save/move_z
execute if score @s commands >= limit commands run schedule function item_structures:zprivate/save/move 1t
#execute if score @s commands >= limit commands store result bossbar progress value run scoreboard players add value vect_x 1
execute if score @s commands >= limit commands run scoreboard players set @s commands 0