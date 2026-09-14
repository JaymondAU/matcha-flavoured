#Remove Heart (kill them)
damage @s 999 minecraft:magic

# Apply pickup effects
scoreboard players add @s Hearts 2
effect give @s regeneration 3 10 true
effect give @s resistance 1 4 true

# If they achieved max hearts in this last pick-up, grant the with_songs advancement
execute if score @s Hearts >= maximum_hearts Hearts run advancement grant @s only matcha:with_songs/max_health