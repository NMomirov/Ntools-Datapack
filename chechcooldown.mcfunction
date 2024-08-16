#For checking how much does more does the cooldown last for
execute unless score @s spawncd matches 0 run tellraw @s ["",{"text":"You can use the spawn command again in ","bold":true,"color":"#F784FF"},{"score":{"name":"*","objective":"spawncd"},"bold":true,"underlined":true,"color":"gold"},{"text":" seconds!","bold":true,"color":"#F784FF"}]

#Display a diffrent message when cooldown runs off
execute if score @s spawncd matches 0 run tellraw @s [{"text": "You can use the spawn command now.","bold": true,"color": "#69ff82"}]