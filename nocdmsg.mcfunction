#this is a function for prompting a message in chat
#when cooldown is 0
#(cooldown is finished)
execute as @a if score @s spawncd matches 0 run tag @s add nocdmsg
execute as @a[tag=nocdmsg] if score @s spawncd matches 0 run tellraw @s [{"text": "You can use the spawn command again!","bold":  true,"color": "#69ff82"}] 