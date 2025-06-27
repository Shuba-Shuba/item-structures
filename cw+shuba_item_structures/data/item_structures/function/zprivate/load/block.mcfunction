# read entry
execute store result score block bsc run data get storage item_structures load.blocks[0]
execute if score block bsc matches ..32767 run data remove storage item_structures load.blocks[0]
execute if score block bsc matches 32768.. run function item_structures:zprivate/load/compressed_block

# int @ block bsc -> block
function item_structures:zprivate/load/block_place

# no block nbt support yet
#execute if data block ~ ~ ~ {} run data modify block ~ ~ ~ {} merge from storage item_structures load.nbts[0]
#execute if data block ~ ~ ~ {} run data remove storage item_structures load.nbts[0]

scoreboard players add @s commands 50