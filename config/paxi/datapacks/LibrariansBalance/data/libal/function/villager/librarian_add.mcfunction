#Add 'trader' tag to Villager
tag @s add trader

#Add 'button' item in Villager ArmorItem#0 to store the current Book data
data modify entity @s ArmorItems[0] set value {id:"minecraft:stone_button",components:{"minecraft:custom_data":{Storage:[{},{ems:0,priceMultiplier:0}]}}}


## SAVING THE OLD TRADE ##
#Save Villager's book data in button item's 'Storage' tag
$data modify entity @s ArmorItems[0].components."minecraft:custom_data".Storage[0] set from entity @s Offers.Recipes[$(slot)].sell.components
#Save Villager's emerald data in button item's 'Storage' tag
$data modify entity @s ArmorItems[0].components."minecraft:custom_data".Storage[1].ems set from entity @s Offers.Recipes[$(slot)].buy.count
#Save Villager's price multiplier in button item's 'Storage' tag
$data modify entity @s ArmorItems[0].components."minecraft:custom_data".Storage[1].priceMultiplier set from entity @s Offers.Recipes[$(slot)].priceMultiplier

## ADDING THE NEW TRADE ##
#Store a success value when the Villager's book in memory (legs armour slot) merges into the Villager's Book trade
$execute store success score same_book libal.main run execute if data entity @s Offers.Recipes[$(slot)].buyB.id run data modify entity @s Offers.Recipes[$(slot)].sell.components set from entity @s ArmorItems[1].components
$execute if data entity @s Offers.Recipes[$(slot)].buyB.id run data modify entity @s Offers.Recipes[$(slot)].sell.components merge value {"minecraft:custom_data":{traded:True}}

#Set the trade to the books emerald value, unless the book already matches.
$execute unless score same_book libal.main matches 0 if data entity @s Offers.Recipes[$(slot)].buyB{count:1} run data modify entity @s Offers.Recipes[$(slot)].buy.count set from storage libal:books cost_final
$execute unless score same_book libal.main matches 0 if data storage libal:books {cost_blocks:True} if data entity @s Offers.Recipes[$(slot)].buyB{count:1} run data modify entity @s Offers.Recipes[$(slot)].buy.id set value "minecraft:emerald_block"
#Set price multiplier to zero if it costs blocks
$execute unless score same_book libal.main matches 0 if data storage libal:books {cost_blocks:True} if data entity @s Offers.Recipes[$(slot)].buyB{count:1} run data modify entity @s Offers.Recipes[$(slot)].priceMultiplier set value 0

## SEALED BOOK LOGIC
execute if score sealed_books libal.main matches 1 run function libal:villager/trades/seal with storage libal:books sealed

## Play Positive sound
execute store result score random libal.main run random value 1..3 
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book"}}]}}] unless score same_book libal.main matches 0 if score random libal.main matches 1 at @s run playsound entity.villager.yes neutral @a ~ ~ ~ 0.5
scoreboard players reset random libal.main

scoreboard players reset same_book libal.main
