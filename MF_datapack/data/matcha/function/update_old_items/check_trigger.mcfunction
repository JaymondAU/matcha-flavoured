execute as @a[scores={update_item=1..}] at @s run function matcha:update_old_items/update_held_item
scoreboard players reset @a[scores={update_item=1..}] update_item
scoreboard players enable @a update_item
