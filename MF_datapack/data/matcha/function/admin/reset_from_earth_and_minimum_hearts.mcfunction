# One-shot: wipe From Earth (tutorial) progress and reset death floor for all online players.
# Run: /function matcha:admin/reset_from_earth_and_minimum_hearts
# Safe to re-run. Root advancement re-grants on the next tick.

# Clear the whole From Earth tab (root reappears via its tick criterion)
advancement revoke @a from matcha:tutorial/root

# Reset death floor to the Easy / new-player default
scoreboard players set @a minimum_hearts 20

# If anyone's Hearts score is below the new floor, bump it and reapply max HP
execute as @a if score @s Hearts < @s minimum_hearts run scoreboard players operation @s Hearts = @s minimum_hearts
execute as @a run function matcha:mechanic/heart_container/set_max_hp

tellraw @a [{"text":"[!]","bold":true,"color":"green"},{"text":": ","color":"green"},{"text":"From Earth progress and minimum hearts have been reset.","color":"gray"}]
