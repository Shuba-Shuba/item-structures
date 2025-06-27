scoreboard objectives add vect_x dummy
scoreboard objectives add vect_y dummy
scoreboard objectives add vect_z dummy

scoreboard objectives add constant dummy
scoreboard objectives add commands dummy
scoreboard players set limit commands 30000
scoreboard objectives add item_structures dummy

bossbar add progress {"text":"Progress","color":"green"}

scoreboard players set .max_export_volume constant 3000000
scoreboard players set #32768 constant 32768
scoreboard players set #1000 constant 1000
scoreboard players set #100 constant 100
scoreboard players set #50 constant 50
scoreboard players set #4 constant 4
scoreboard players set #-1 constant -1

forceload add 69420 69420
setblock 69420 0 69420 yellow_shulker_box

#schedule function cw_menu:message 1t
#schedule function item_structures:menu/message 2t

# shuba added this
scoreboard objectives add bsc dummy
#function item_structures:setup_blocks_list
#function item_structures:setup_index_list