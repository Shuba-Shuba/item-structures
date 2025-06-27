function bsc:setblock/l3/l3_0
execute if data block ~ ~ ~ {} run data modify block ~ ~ ~ {} set from storage item_structures load.nbt[0]
execute if data block ~ ~ ~ {} run data remove storage item_structures load.nbt[0]