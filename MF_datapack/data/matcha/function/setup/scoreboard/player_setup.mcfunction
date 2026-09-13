# This function is called by the "matcha:setup/update_this_player" function
# This function is run once by each new player in the world, or by each player which last joined the world on an earlier version of Matcha
# This function sets up initial scores for mechanics which require a starting score that isn't null(no score) to work

scoreboard players add @s sneaking 0

# Version updates revoke the tutorial advancements that lower minimum_hearts, so always
# restore the new-player death floor here. Otherwise players keep a lowered floor while
# the From Earth tab looks fresh (and can lower it again by re-earning those advs).
scoreboard players set @s minimum_hearts 20

# Sync Hearts value with player's max hp
execute store result score @s Hearts run attribute @s minecraft:max_health get

# Ensure Hearts is not below the restored floor, then apply max HP
execute if score @s Hearts < @s minimum_hearts run scoreboard players operation @s Hearts = @s minimum_hearts
function matcha:mechanic/heart_container/set_max_hp
