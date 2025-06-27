setblock ~ ~ ~ air

kill @e[tag=end_point]
summon marker ~ ~-0.9 ~ {CustomName:'{"text":"E","color":"dark_purple"}',CustomNameVisible:1b,Tags:["end_point"]}

#say End Point Placed