# romphonix-rpg

A phone collecting RPG!

***Notice: This file is intended for developer use only.***

When working with this project, it's important to know which columns are used for what in the Grids / Arrays.

## Phone DS Grid
Used for phones in the party and in boxes. Not used for wild phones.

Column | Value
--- | ---
0 | Name
1 | Level
2/3 | HP/Max HP
4 | Energy
5/6 | EXP/Max EXP
7 | Brand
8 | AT
9 | DF
10 | WT
11 | Icon
12 | Screen status
13 | Board status
14 | Cover status
15 | Battery status
16-19 | Moves 1-4
20 | Sprite
21 | Description
22 | Base EXP
23 | (currently unused)

## Wild Phone Array
Used for wild phones. Due to the way JSON data is loaded by Game Maker.
Column | Value
--- | ---
0 | Description
1 | Battery
2 | Defence
3 | Rarity
4 | Base EXP
5 | Sprite
6 | Name
7 | Fictional flag
8 | Attack
9 | Weight
10 | Broken chance (one in X)
11 | Icon
12 | Brand
