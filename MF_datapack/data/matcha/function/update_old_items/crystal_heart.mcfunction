#Does not run in creative, because it can cause an infinite loop
advancement revoke @s only matcha:update_old_items/crystal_heart
execute if entity @s[gamemode=creative] run return

# Old namespace stamp (minecraft:heart_container) → current treasure heart
execute store success score #crystal_heart_migrate version_number run clear @s minecraft:poisonous_potato[minecraft:item_model="minecraft:heart_container"] 1
execute if score #crystal_heart_migrate version_number matches 1 run loot give @s loot matcha:treasure/crystal_heart
