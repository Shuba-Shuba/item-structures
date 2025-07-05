execute if data entity @s SelectedItem run function item_structures:zprivate/preserve_selected_item

data remove block 69420 0 69420 Items
item replace block 69420 0 69420 container.0 with netherite_ingot 1
item modify block 69420 0 69420 container.0 item_structures:export

item replace entity @s weapon from block 69420 0 69420 container.0

title @s times 10 80 10
title @s title {"text":"Item Exported","color":"gold"}
title @s subtitle [{"text":"Save item with ","color":"gray"},{keybind:"key.saveToolbarActivator"},"+<slot>"]

execute store result score #sendFeedback item_structures run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function item_structures:zprivate/reset_gamerules 1t

function item_structures:zprivate/menu/sound
