tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s ["",{"text":"=== "},{"text":"Item Structure","color":"aqua"},{"text":" Config ===\n"},{"text":" (click options)","color":"gray"}]
execute if score masked item_structures matches 1 run tellraw @s ["",{"text":"Allow ","color":"gold","hover_event":{"action":"show_text","value":"Air in structure is ignored"}},{"text":"Masked: ","color":"yellow","hover_event":{"action":"show_text","value":"Air in structure is ignored"}},{"text":" [","color":"gold"},{"text":"Y","color":"green"},{"text":"]","color":"gold"},{"text":" [","color":"gray"},{"text":"N","color":"dark_red","click_event":{"action":"run_command","command":"function item_structures:zprivate/menu/mask_off"}},{"text":"]","color":"gray"}]
execute unless score masked item_structures matches 1 run tellraw @s ["",{"text":"Allow ","color":"gold","hover_event":{"action":"show_text","value":"Air in structure is ignored"}},{"text":"Masked: ","color":"yellow","hover_event":{"action":"show_text","value":"Air in structure is ignored"}},{"text":" [","color":"gray"},{"text":"Y","color":"dark_green","click_event":{"action":"run_command","command":"function item_structures:zprivate/menu/mask_on"}},{"text":"] ","color":"gray"},{"text":"[","color":"gold"},{"text":"N","color":"red"},{"text":"]","color":"gold"}]

tellraw @s [{"text":" - "},{"text":"Back","color":"red","click_event":{"action":"run_command","command":"function item_structures:menu"}}]


execute store result score #sendFeedback item_structures run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function item_structures:zprivate/reset_gamerules 1t
function item_structures:zprivate/menu/sound