#Execute at all entities who quality for being slowed
execute as @e[distance=..8,type=#matcha:warding_targets_slowed,predicate=!matcha:wearing_copper_armour] run function matcha:enchantment_effects/warding/effects/apply_slowness.macro {level:1}

#Execute as the nearest valid target, and then check, to see if damage is actually applied
execute as @n[distance=..3,type=#matcha:warding_targets_no_wither] run function matcha:enchantment_effects/warding/effects/check_warding_resistance_1

#This way, the copper-armour-wearers act like a "lightning rod", channelling warding to them, that cannot be applied
