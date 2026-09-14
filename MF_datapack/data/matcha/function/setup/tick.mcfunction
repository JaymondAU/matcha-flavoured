# Run functions

function matcha:environmental/check_freezing_water_conditions
function matcha:environmental/nether_water
function matcha:environmental/village_eerie_sound

function matcha:mechanic/anvil_xp/remove_xp
function matcha:mechanic/cake_eaten
function matcha:mechanic/heart_container/detect_death
function matcha:mechanic/manage_hunger
function matcha:mechanic/sleeping/tick
function matcha:mechanic/spawn_mechanic/ticking
function matcha:mechanic/warding_stone/warding_stone

function matcha:particle/beacon_kindling
function matcha:particle/item_particles
function matcha:particle/riding_boat

function matcha:stopwatches



# Reduce cooldowns by one tick
execute as @a if score @s AnemosCooldown matches 1.. run scoreboard players remove @s AnemosCooldown 1