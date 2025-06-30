summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:[init]}
data modify entity @n[type=item,tag=init] Owner set from entity @s UUID
data modify entity @n[type=item,tag=init] Item set from entity @s SelectedItem
