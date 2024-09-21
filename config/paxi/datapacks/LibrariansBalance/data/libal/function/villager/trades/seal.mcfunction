#Store sealed book data
scoreboard players set isSeal libal.main 0

#Check for sealed books.
$execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.components."minecraft:stored_enchantments".levels.$(1)
$execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.components."minecraft:stored_enchantments".levels.$(2)
$execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.components."minecraft:stored_enchantments".levels.$(3)
$execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.components."minecraft:stored_enchantments".levels.$(4)
$execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.components."minecraft:stored_enchantments".levels.$(5)
$execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.components."minecraft:stored_enchantments".levels.$(6)
$execute if score isSeal libal.main matches 0 run execute store success score isSeal libal.main run data get block ~ ~ ~ Book.components."minecraft:stored_enchantments".levels.$(7)

#If the book is sealed, 
execute if score isSeal libal.main matches 1 run execute if data entity @s Offers.Recipes[0].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[0].sell.components merge value {"minecraft:custom_data":{sealed:True},"minecraft:lore":['{"text":" Sealed","color":"blue"}']}
execute if score isSeal libal.main matches 1 run execute if data entity @s Offers.Recipes[1].buyB{id:"minecraft:book"} run data modify entity @s Offers.Recipes[1].sell.components merge value {"minecraft:custom_data":{sealed:True},"minecraft:lore":['{"text":" Sealed","color":"blue"}']}

#Reset book sealeding
scoreboard players reset isSeal libal.main