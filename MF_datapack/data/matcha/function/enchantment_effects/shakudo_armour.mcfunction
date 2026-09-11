# Each Shakudo armour piece adds +1. Shakudo Elytra should count as +5 total.
# Reset in stopwatches.mcfunction

scoreboard players add @s shakudo_regen 1

# Once per cycle: elytra contributes +4 more (1 from above + 4 = 5)
execute if entity @s[tag=!matcha_shakudo_elytra_bonus] if items entity @s armor.chest *[minecraft:item_model="matcha:shakudo_elytra"] run scoreboard players add @s shakudo_regen 4
execute if items entity @s armor.chest *[minecraft:item_model="matcha:shakudo_elytra"] run tag @s add matcha_shakudo_elytra_bonus
