execute as @a run tellraw @s [{"text":"[","bold":true,"color":"blue"},{"text":"i","bold":true,"color":"white"},{"text":"]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Run \"/function ntools:debug/cdscoredebug\" to see the debug menu again.","bold":true,"italic":true,"color":"blue"}]}},{"text": "       Debug ","color": "#f784ff","bold": true},{"text": "Menu","bold": true,"color": "#ff2e2e"}]
execute as @a run tellraw @s [{"text": " - ","bold": true,"color": "#ffe346"},{"text": "Enable cooldown debug?","bold": true,"color": "#f784ff","clickEvent": {"action": "run_command","value": "/scoreboard objectives setdisplay sidebar spawncd"}}]
execute as @a run tellraw @s [{"text": " - ","bold": true,"color": "#ffe346"},{"text": "Disable debug","bold": true,"color": "#ff2e2e","clickEvent": {"action": "run_command","value": "/scoreboard objectives setdisplay sidebar"}}]