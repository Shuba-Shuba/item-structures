tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s ["",{"text":"=== "},{"text":"Item Structure","color":"aqua"},{"text":" Menu ===\n"},{"text":" (click options)","color":"gray"}]
tellraw @s [{"text":" - "},{"text":"Get Tools","color":"blue","click_event":{"action":"run_command","command":"function item_structures:zprivate/menu/get_tools"},"hover_event":{"action":"show_text","value":"Get marker placement tools"}}]

tellraw @s [{"text":"\n - "},{"text":"SAVE","color":"yellow","click_event":{"action":"run_command","command":"function #item_structures:save"},"hover_event":{"action":"show_text","value":"Save from S to E markers"}}]
tellraw @s [{"text":" - "},{"text":"EXPORT","color":"gold","click_event":{"action":"run_command","command":"function #item_structures:export"},"hover_event":{"action":"show_text","value":"Export saved structure to item"}}]
tellraw @s [{"text":" - "},{"text":"IMPORT","color":"dark_green","click_event":{"action":"run_command","command":"function #item_structures:import"},"hover_event":{"action":"show_text","value":"Import item-structure in mainhand"}}]
tellraw @s [{"text":" - "},{"text":"LOAD","color":"green","click_event":{"action":"run_command","command":"function #item_structures:load"},"hover_event":{"action":"show_text","value":"Loads from S marker"}}]
tellraw @s [{"text":" - "},{"text":"CANCEL","color":"red","click_event":{"action":"run_command","command":"function #item_structures:cancel"},"hover_event":{"action":"show_text","value":"Cancels operation"}}]


execute store result score #sendFeedback item_structures run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function item_structures:zprivate/reset_gamerules 1t
function item_structures:zprivate/menu/sound