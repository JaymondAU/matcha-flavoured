# If Hearts is unset or <= 0, restore from this player's minimum (fallback 20)
execute unless score @s Hearts = @s Hearts run scoreboard players set @s Hearts 20
execute if score @s Hearts matches ..0 if score @s minimum_hearts matches 6..20 run scoreboard players operation @s Hearts = @s minimum_hearts
execute if score @s Hearts matches ..0 run scoreboard players set @s Hearts 20

# Ensure personal minimum is valid before clamping
execute unless score @s minimum_hearts matches 6..20 run scoreboard players set @s minimum_hearts 20

# Fallback: if somehow their score is set above the max, then set it to the maximum
execute if score @s Hearts >= maximum_hearts Hearts store result score @s Hearts run scoreboard players get maximum_hearts Hearts

# Easy: never go below 10 hearts (20 HP). Death floor still tracks via minimum_hearts if they leave easy.
execute if score current_world_settings_difficulty difficulty_score matches 1 if score @s Hearts matches ..19 run scoreboard players set @s Hearts 20

# Normal/hard: clamp to this player's minimum_hearts (wired from broken-heart advancements)
execute if score current_world_settings_difficulty difficulty_score matches 2.. if score @s Hearts < @s minimum_hearts run scoreboard players operation @s Hearts = @s minimum_hearts

# Convert the player's Hearts score into a format that the Macro function can read
execute store result storage matcha:hearts Hearts float 1 run scoreboard players get @s Hearts

# Set their max hp to match their Hearts score (This will likely be done as the player is on the death screen)
function matcha:mechanic/heart_container/set_max_hp.macro with storage matcha:hearts

# While it shouldn't be necessary, I'm emptying the storage again just to be safe
data remove storage matcha:hearts Hearts
