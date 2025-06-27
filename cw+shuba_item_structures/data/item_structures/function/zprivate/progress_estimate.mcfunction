# old progress bar: blocks / blocks per tick = ticks
# problem: assumes constant blocks/tick rate, but the rate changes if the player changes "limit commands", which shuba does a lot to maintain ~50 mspt
#scoreboard players operation total vect_x = system vect_x
#scoreboard players operation total vect_x *= system vect_y
#scoreboard players operation total vect_x *= system vect_z
#scoreboard players operation max vect_x = limit commands
#scoreboard players operation max vect_x /= #50 constant
#execute store result bossbar progress max run scoreboard players operation total vect_x /= max vect_x

# new progress bar: calculate number of x rows in build, increment at end of x-row
scoreboard players operation max vect_x = system vect_y
execute store result bossbar progress max run scoreboard players operation max vect_x *= system vect_z
execute store result bossbar progress value run scoreboard players set value vect_x 0

bossbar set progress name {text:"Load Progress (gets faster over time)",color:"green"}
bossbar set progress visible true
bossbar set progress players @a