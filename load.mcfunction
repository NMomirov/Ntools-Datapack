#Loads when /reload is used

#clear chat
function ntools:tools/chatclear

#Display the message when datapack is reloaded
tellraw @a [{"text": "                                          ","underlined": true,"color": "#85c8ff"}]
tellraw @a " "
tellraw @a [{"text": "           N ","color": "#4498DB","bold": true},{"text": "T","color": "#4498DB","bold": true},{"text": "o","color": "#85c8ff","bold": true},{"text": "o","color": "#d1eaff","bold": true},{"text": "l","color": "#85c8ff","bold": true},{"text": "s","color": "#4498DB","bold": true}]
tellraw @a [{"text": " - ","bold": true,"color": "#ffe346"},{"text": "Lood was successful!","color": "#69ff82","bold": true}]
tellraw @a [{"text": "                                          ","underlined": true,"color": "#85c8ff"}]
tellraw @a " "
function ntools:debug/cdscoredebug
tellraw @a [{"text": "                                          ","underlined": true,"color": "#85c8ff"}]
tellraw @a " "

#Adds a trigger command for teleporting the player to spawn
scoreboard objectives add spawn trigger
execute as @a run scoreboard players set @s spawn 0

#Creat a scoreboard for the timer that last half an hour
#(1800 seconds)
scoreboard objectives remove spawncd
scoreboard objectives add spawncd dummy
scoreboard players set @a spawncd 1800
#^^^ Change this to modify the cooldown time in seconds

#Cooldown enableing scoreboard creation
scoreboard objectives add cdenabled dummy

#Trigger for the command that displays how many
#seconds more till u can run spawn command again
scoreboard objectives add checkcd trigger "chechcooldown"

#Scoreboard for displaying the massege when the cooldown
#runs off
scoreboard objectives add nocdmsgtimer dummy
scoreboard players set @a checkcd 0

#Call the function for the timer
function ntools:timers/cdtimer
#This is for all the check that dont need to be
#executed every tick
#Used for optimization
function ntools:timers/every1s
