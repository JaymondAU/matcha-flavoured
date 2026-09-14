#If they are wearing copper armour, run the warding resistant effects
execute if predicate matcha:wearing_copper_armour run return run function matcha:enchantment_effects/warding/effects/apply_warding_resistance

# else, apply damage
function matcha:enchantment_effects/warding/effects/apply_damage.macro {damage:1}
