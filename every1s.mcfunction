#This function runs every 1s
#Used for optimatization

#Schedles the command agaim
schedule function ntools:timers/every1s 1s replace

#Emable the trigger command to check cooldown
execute as @a run scoreboard players enable @s checkcd
#Runs the function when scoreboard is triggerd
execute as @a if score @s checkcd matches 1.. run function ntools:debug/chechcooldown
#If score is 1 or higher set score back to 0
execute as @a if score @s checkcd matches 1.. run scoreboard players set @s checkcd 0
#If cooldown runs off enable the trigger command to teleport to spawn
execute as @a if score @s spawncd matches 0 run scoreboard players enable @s spawn