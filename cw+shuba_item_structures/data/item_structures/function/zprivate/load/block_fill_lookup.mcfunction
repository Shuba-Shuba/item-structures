# fill
$data modify storage item_structures macro.block set from storage item_structures load.index[$(index)]
function item_structures:zprivate/load/block_fill_fill with storage item_structures macro

# skip blocks filled
$tp @s ~$(length_minus_one) ~ ~
scoreboard players operation @s vect_x -= same_count commands