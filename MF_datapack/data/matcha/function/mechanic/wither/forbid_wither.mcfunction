tellraw @a {translate:"error.kleispack.wither_spawn_invalid",color:"red"}
execute as @e[type=wither] if predicate matcha:wither/invalid_wither_spawn run execute as @s run schedule function matcha:mechanic/wither/kill_star 1t
#This was done so that I could have player-only nether star drops, but the wither LT doens't allow that. Are nether star drops hard coded?
execute as @e[type=wither] if predicate matcha:wither/invalid_wither_spawn run kill @s