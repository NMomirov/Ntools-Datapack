
#This resets the spawn trigger command while cooldown is
#still running
execute as @a if score @s spawncd matches 1.. run scoreboard players reset @s spawn

#Keep two scoreboards in sync if one changes
execute as @a if score @s spawn matches 0 run scoreboard players set @s cdenabled 0
execute as @a if score @s spawn matches 1 run scoreboard players set @s cdenabled 1

#Sets the cdenabled scoreboard to 0 if the cooldown started
#so it dosent stay 1800s and actualy works
execute as @a if score @s spawncd matches 1800 run scoreboard players set @s cdenabled 0

#starts the timer again when spawn command is triggerd
execute as @a if score @s cdenabled matches 1 run scoreboard players set @s spawncd 1800
#^^^ Change this also to modify the cooldown {in seconds}

#teleports the player to spawn when command is triggerd
execute as @a if score @s spawn matches 1.. run tp @s 0 70 0
#^^^ change this to the cordinates you like

#used for prompting a message in chat when cooldown runs off
execute as @a if score @s spawncd matches 0 unless entity @a[tag=nocdmsg] run function ntools:tools/nocdmsg/nocdmsg
execute as @a[tag=nocdmsg] if score @s spawncd matches 1.. run tag @s remove nocdmsg
