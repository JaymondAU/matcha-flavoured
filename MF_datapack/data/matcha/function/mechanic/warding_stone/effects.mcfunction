# This function is called every 0.5s by a timer

# Get nearby villagers that do not have regen and apply it
execute as @e[distance=..16,type=#matcha:villager_friends,predicate=!matcha:effects/has_regeneration] run effect give @s minecraft:regeneration 3 0 true


#Execute at all entities who quality for being slowed
execute as @e[distance=..24,type=#matcha:warding_stone_targets] run function matcha:mechanic/warding/apply_slowness.macro {level:2}


# Wither is special, he gets targeted before other mobs
execute if entity @e[distance=..24,type=wither] as @n[type=wither] run return run function matcha:mechanic/warding/apply_damage.macro {damage:2}

# Execute as the nearest valid target and apply damage effect
# As we've already checked for any Withers within range, we know that there aren't any
execute as @n[distance=..24,type=#matcha:warding_stone_targets] run function matcha:mechanic/warding/apply_damage.macro {damage:7}
