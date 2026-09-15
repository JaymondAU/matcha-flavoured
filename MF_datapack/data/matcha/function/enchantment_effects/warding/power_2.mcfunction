#Execute at all entities who quality for being slowed
execute as @e[distance=..10,type=#matcha:warding_targets_slowed,predicate=!matcha:wearing_copper_armour] run function matcha:mechanic/warding/apply_slowness.macro {level:1}

# Check if an entity within range is wearing copper armour, if so then target them
# This way, the copper-armour-wearers act like a "lightning rod", channelling warding to them, that cannot be applied
execute if entity @e[distance=..6,predicate=matcha:wearing_copper_armour] as @n[predicate=matcha:wearing_copper_armour] run return run function matcha:mechanic/warding/apply_warding_resistance

# Wither is special, he gets targeted before other mobs
execute if entity @e[distance=..8,type=wither] as @n[type=wither] run return run function matcha:mechanic/warding/apply_damage.macro {damage:1}

# Execute as the nearest valid target and apply damage effect
# As we've already checked for any copper armor wearing mobs & Withers within range, we know that there aren't any
execute as @n[distance=..6,type=#matcha:warding_targets] run function matcha:mechanic/warding/apply_damage.macro {damage:1}
