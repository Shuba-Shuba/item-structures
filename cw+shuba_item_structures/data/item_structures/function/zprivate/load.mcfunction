kill @e[tag=loader]
summon marker ~ ~ ~ {Tags:["loader","org_x"]}
summon marker ~ ~ ~ {Tags:["loader","org_y"]}
summon marker ~ ~ ~ {Tags:["loader","org_z"]}

function item_structures:zprivate/progress_estimate

execute as @e[tag=loader,tag=org_x,limit=1,type=marker] at @s run function item_structures:zprivate/load/start