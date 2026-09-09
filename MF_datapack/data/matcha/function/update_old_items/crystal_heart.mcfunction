#Does not run in creative, because it can cause an infinite loop
advancement revoke @s only matcha:update_old_items/crystal_heart
execute if entity @p[gamemode=!creative] run clear @s minecraft:poisonous_potato[minecraft:item_model="minecraft:heart_container"] 1
execute if entity @p[gamemode=!creative] run loot give @s loot matcha:treasure/crystal_heart
