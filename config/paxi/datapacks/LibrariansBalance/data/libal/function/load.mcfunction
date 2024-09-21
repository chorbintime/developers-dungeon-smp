#Scoreboard initial
scoreboard objectives add libal.main dummy

#update message on upgrade
execute if score #m libal.main matches -1 unless score #v libal.main matches 34 run tellraw @a ["",{"text":"[Librarian's Balance]","color":"dark_green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/librarians-balance"},"hoverEvent":{"action":"show_text","contents":"Datapack / Mod"}},{"text":" In this version your settings have been reset. "},{"text":"Reconfigure","color":"aqua","clickEvent":{"action":"run_command","value":"/function libal:config"},"hoverEvent":{"action":"show_text","contents":"/function libal:config"}},{"text":" if you made important changes."}]

#load settings (remove execute condition for debug)
execute unless score #v libal.main matches 34 run function libal:settings

#set version
scoreboard players set #v libal.main 34

#toggle multiplier
scoreboard players set #m libal.main -1

#List of possible enchantments to replace Mending with
data merge storage libal:books {replacements:[{"minecraft:bane_of_arthropods":1},{"minecraft:smite":1},{"minecraft:loyalty":1}]}

#Storage data for finding the villager
data merge storage libal:jobs_find {cord:[I; 0, 0, 0]}