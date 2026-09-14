# Upgrade pre-rework Crystal Hearts (matcha model, no consumable) to the usable death-protection item.
# Recurses one item at a time so stacked hearts each become a full new item.
execute if entity @s[gamemode=creative] run return

execute store success score #crystal_heart_upgrade version_number run clear @s minecraft:poisonous_potato[minecraft:item_model="matcha:heart_container",!minecraft:consumable] 1
execute unless score #crystal_heart_upgrade version_number matches 1 run return

loot give @s loot matcha:treasure/crystal_heart
function matcha:update_old_items/upgrade_crystal_hearts
