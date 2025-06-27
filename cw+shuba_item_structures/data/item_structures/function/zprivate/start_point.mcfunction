setblock ~ ~ ~ air

kill @e[tag=start_point]
summon marker ~ ~-0.9 ~ {CustomName:'{"text":"S","color":"dark_purple"}',CustomNameVisible:1b,Tags:["start_point"]}

#say Start Point Placed