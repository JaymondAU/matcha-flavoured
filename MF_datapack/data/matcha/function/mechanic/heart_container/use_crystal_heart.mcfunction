# If they have less than the max HP, clear the heart container (kill them)
execute if score @s Hearts < maximum_hearts Hearts run function matcha:mechanic/heart_container/clear_crystal_heart

# Update Max HP
execute as @s run function matcha:mechanic/heart_container/set_max_hp


#Revokes the advancement from everyone (since its a schedule) after a cooldown. This is beucase if there is no cooldown, the advancement keeps re-triggering
#Which means you can get a full 30 hearts if you have a stack >1 of hearts in your hands
schedule function matcha:mechanic/heart_container/revoke_crystal_heart_adv 1s

