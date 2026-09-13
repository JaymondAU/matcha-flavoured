execute at @a run advancement revoke @p only matcha:update_vanilla_item/water_bottle
execute if entity @p[gamemode=!creative] run function matcha:mechanic/water_bottle/process_water_bottle

# In creative, items are refilled by the game. This can cause serious issues, corrupting worlds.
# This is a band-aid fix for that issue. If you have a better idea, lmk