#Execute at all entities who quality for being slowed
execute as @e[distance=..14,type=#matcha:warding_targets_slowed,predicate=!matcha:wearing_copper_armour] run function matcha:enchantment_effects/warding/effects/apply_slowness.macro {level:2}

#Execute at the nearest valid target, and then check, to see if damage is actually applied
execute as @n[type=!player,distance=..8,type=#matcha:warding_targets_no_wither] run function matcha:enchantment_effects/warding/effects/check_warding_resistance_1

#This way, the copper-armour-wearers act like a "lightning rod", channelling warding to them, that cannot be applied

#Wither is special, he gets damaged if he is in range no matter what
execute as @n[type=wither,distance=..12] run function matcha:enchantment_effects/warding/effects/apply_damage.macro {damage:1}
