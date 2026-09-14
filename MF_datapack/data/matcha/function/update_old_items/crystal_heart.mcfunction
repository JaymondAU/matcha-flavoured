# Upgrade pre-rework Crystal Hearts to the usable treasure format.
# Does not run in creative (can infinite-loop with creative pickups).
# Advancement may also fire for already-new hearts; those no-ops below.
advancement revoke @s only matcha:update_old_items/crystal_heart
execute if entity @s[gamemode=creative] run return

# Old namespace stamp (already-generated abbey chunks, old loot)
execute store success score #crystal_heart_migrate version_number run clear @s minecraft:poisonous_potato[minecraft:item_model="minecraft:heart_container"] 1
execute if score #crystal_heart_migrate version_number matches 1 run loot give @s loot matcha:treasure/crystal_heart
execute if score #crystal_heart_migrate version_number matches 1 run return run function matcha:update_old_items/crystal_heart

# Pre-rework matcha hearts with consumable stripped (abbey floaters / old treasure)
execute store success score #crystal_heart_migrate version_number run clear @s minecraft:poisonous_potato[minecraft:item_model="matcha:heart_container",!minecraft:consumable] 1
execute if score #crystal_heart_migrate version_number matches 1 run loot give @s loot matcha:treasure/crystal_heart
execute if score #crystal_heart_migrate version_number matches 1 run function matcha:update_old_items/crystal_heart
