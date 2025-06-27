execute if data entity @s SelectedItem.components."minecraft:custom_data".structure run data modify storage item_structures save set from entity @s SelectedItem.components."minecraft:custom_data".structure

title @s times 10 80 10
title @s title {"text":"Item Imported","color":"dark_green"}
title @s subtitle {"text":"Imported from hand Item","color":"gray"}
execute unless data entity @s SelectedItem.components."minecraft:custom_data".structure run title @s title {"text":"FAILED Imported","color":"dark_green"}
execute unless data entity @s SelectedItem.components."minecraft:custom_data".structure run title @s subtitle {"text":"This isnt an item structure!","color":"gray"}

execute store result score #sendFeedback item_structures run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function item_structures:zprivate/reset_gamerules 1t

function item_structures:zprivate/menu/sound