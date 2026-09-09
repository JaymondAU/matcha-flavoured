#Does not run in creative, because it can cause an infinite loop
advancement revoke @s only matcha:update_old_items/copper_shears
execute if entity @p[gamemode=!creative] run clear @s minecraft:shears[minecraft:item_model="minecraft:copper_shears"] 1
execute if entity @p[gamemode=!creative] run loot give @s loot matcha:equipment/copper_shears
