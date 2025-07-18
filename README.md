# item structures
Requires Bookshelf Block (https://mcbookshelf.dev)

## how to use
This datapack was originally created by YouTuber Cloud Wolf in 2020, and this is an updated version of it, which you use the same way. Here's the tutorial video he made explaining how to use it: https://www.youtube.com/watch?v=IL7mw2NaIbE

## data compression
unlike the original, this system adds data compression, which allows you to store really big structures. in most cases, this reduces the amount of data stored on the item by over 90% and makes the structure load over 5 times faster. minecraft doesn't allow packets to be larger than 2MB, so my code sends a warning message if the structure data after compression is estimated to be more than 1.8MB. i don't know how far past that warning you can go.

## purpose
i ended up getting rid of the undo and masked settings simply because they're just not features i needed for what i'm using this for, but adding them back in is probably pretty easy. the reason i'm updating this system is that it's for custom maps on a realms minigame. the problem is that on realms minigames, the world resets when everyone leaves, which means that if people try to build custom maps it couldn't save. now you can build your custom map, export it to an item, save that item to your creative mode saved hotbars, so after realms resets you can still load the map from the item.

## performance
small builds (under 32x32x32), save and load in a few seconds.
the biggest build i tested, with a volume of 6.1 million blocks (279x77x284), took about 9 minutes to save, and loaded in about 45 seconds.

## how compressing works
this datapack saves an array of every block state in the structure (the "index") as strings (e.g. "oak_wall_sign[facing=north,waterlogged=true]"), which Bookshelf gets, and can be put straight into a macro for /setblock or /fill. then it stores an array of integers for every block (the "list of entries"), corresponding to which block state in the index is located at each block (e.g. [0,3,1,2]). for example, if the index is ["stone","cobblestone"], and the list of entries is [1,0,1,0], that means the structure has a cobblestone block, then stone, then cobblestone, then stone. but if there are multiple identical blocks in a row, they're saved as one integer (a "compressed int"), using this formula: 32768*(consecutive identical blocks - 1) + (index). so if we wanted to save 15 stone blocks in a row followed by 2 cobblestone, instead of saving [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1], it's saved as [491520,32769] (this only works because minecraft has less than 32768 possible block states in the game). compressed ints make the structure use a lot less data, and load faster because it can use /fill to place the whole compressed int in 1 command instead of many /setblock commands.