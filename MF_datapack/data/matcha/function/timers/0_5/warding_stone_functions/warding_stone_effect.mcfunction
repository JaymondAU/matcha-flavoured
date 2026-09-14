#Apply slowness to all mobs in range on a timer, for particle's sake
execute as @e[distance=..24,type=#matcha:warding_stone_targets] run effect give @s minecraft:slowness 2 2 true
execute as @e[distance=..24,type=#matcha:warding_stone_targets] run execute at @s anchored feet positioned ^ ^ ^-0.15 run particle minecraft:sculk_soul ~ ~.1 ~ .25 0 .25 .01 2
# Get nearest target to damage
execute as @n[distance=..24,type=#matcha:warding_stone_targets] run function matcha:timers/0_5/warding_stone_functions/warding_stone_target