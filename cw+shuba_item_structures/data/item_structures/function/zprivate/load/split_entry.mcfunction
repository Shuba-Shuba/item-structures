# put what doesn't fit in this row back into array
scoreboard players operation tmp commands = same_count commands
scoreboard players operation tmp commands -= @s vect_x
scoreboard players operation tmp commands *= #32768 constant
execute store result storage item_structures load.blocks[0] int 1 run scoreboard players operation tmp commands += block_id commands

# get length of what fits
scoreboard players operation same_count commands = @s vect_x
scoreboard players remove same_count commands 1

title @a actionbar 'split'