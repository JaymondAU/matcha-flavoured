# If Hearts is unset or <= 0, restore from this player's minimum (fallback 20)
execute unless score @s Hearts = @s Hearts run scoreboard players set @s Hearts 20
execute if score @s Hearts matches ..0 if score @s minimum_hearts matches 6..20 run scoreboard players operation @s Hearts = @s minimum_hearts
execute if score @s Hearts matches ..0 run scoreboard players set @s Hearts 20

# Ensure personal minimum is valid before clamping
execute unless score @s minimum_hearts matches 6..20 run scoreboard players set @s minimum_hearts 20

# Fallback: if somehow their score is set above the max, then set it to the max
execute if score @s Hearts >= maximum_hearts Hearts run scoreboard players set @s Hearts 60

# Easy: never go below 10 hearts (20 HP)
execute if score current_world_settings_difficulty difficulty_score matches 1 if score @s Hearts matches ..19 run scoreboard players set @s Hearts 20

# Normal/hard: clamp to this player's minimum_hearts (not the unused global current_minimum_hearts)
execute unless score current_world_settings_difficulty difficulty_score matches 1 if score @s Hearts < @s minimum_hearts run scoreboard players operation @s Hearts = @s minimum_hearts

# Apply max_health attribute from Hearts score
execute if score @s Hearts matches 60 run attribute @s minecraft:max_health base set 60
execute if score @s Hearts matches 58 run attribute @s minecraft:max_health base set 58
execute if score @s Hearts matches 56 run attribute @s minecraft:max_health base set 56
execute if score @s Hearts matches 54 run attribute @s minecraft:max_health base set 54
execute if score @s Hearts matches 52 run attribute @s minecraft:max_health base set 52
execute if score @s Hearts matches 50 run attribute @s minecraft:max_health base set 50
execute if score @s Hearts matches 48 run attribute @s minecraft:max_health base set 48
execute if score @s Hearts matches 46 run attribute @s minecraft:max_health base set 46
execute if score @s Hearts matches 44 run attribute @s minecraft:max_health base set 44
execute if score @s Hearts matches 42 run attribute @s minecraft:max_health base set 42
execute if score @s Hearts matches 40 run attribute @s minecraft:max_health base set 40
execute if score @s Hearts matches 38 run attribute @s minecraft:max_health base set 38
execute if score @s Hearts matches 36 run attribute @s minecraft:max_health base set 36
execute if score @s Hearts matches 34 run attribute @s minecraft:max_health base set 34
execute if score @s Hearts matches 32 run attribute @s minecraft:max_health base set 32
execute if score @s Hearts matches 30 run attribute @s minecraft:max_health base set 30
execute if score @s Hearts matches 28 run attribute @s minecraft:max_health base set 28
execute if score @s Hearts matches 26 run attribute @s minecraft:max_health base set 26
execute if score @s Hearts matches 24 run attribute @s minecraft:max_health base set 24
execute if score @s Hearts matches 22 run attribute @s minecraft:max_health base set 22
execute if score @s Hearts matches 20 run attribute @s minecraft:max_health base set 20
execute if score @s Hearts matches 18 run attribute @s minecraft:max_health base set 18
execute if score @s Hearts matches 16 run attribute @s minecraft:max_health base set 16
execute if score @s Hearts matches 14 run attribute @s minecraft:max_health base set 14
execute if score @s Hearts matches 12 run attribute @s minecraft:max_health base set 12
execute if score @s Hearts matches 10 run attribute @s minecraft:max_health base set 10
execute if score @s Hearts matches 8 run attribute @s minecraft:max_health base set 8
execute if score @s Hearts matches 6 run attribute @s minecraft:max_health base set 6
