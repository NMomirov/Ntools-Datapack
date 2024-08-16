#This is a function for the timer
#the timer controlos the cooldown(removes 1 frome spawncd scoreboard every 1s)

#This calls the function itself evety 1 second
#so it can repeat
schedule function ntools:timers/cdtimer 1s replace

#This removes 1 second if the scoreboard value is larger than 0
execute as @a if score @s spawncd matches 1.. run scoreboard players remove @s spawncd 1