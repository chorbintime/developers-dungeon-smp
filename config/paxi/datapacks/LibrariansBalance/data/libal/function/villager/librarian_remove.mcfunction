#Remove 'trader' tag to Villager
tag @s remove trader
scoreboard players reset condition libal.main
#say Bye :(

#Play Particles and Sound
execute if data entity @s Offers.Recipes[1].buyB{count:1} at @s run particle minecraft:smoke ~ ~1.2 ~ 0.2 0.2 0.2 0.01 35
execute if data entity @s Offers.Recipes[0].buyB{count:1} at @s run particle minecraft:smoke ~ ~1.2 ~ 0.2 0.2 0.2 0.01 35
#execute at @s run playsound minecraft:entity.villager.trade block @a

#Changes trade table back to the original
execute if data entity @s Offers.Recipes[1].buyB{count:1} run data modify entity @s Offers.Recipes[1].sell.components set from entity @s ArmorItems[0].components."minecraft:custom_data".Storage[0]
execute if data entity @s Offers.Recipes[0].buyB{count:1} run data modify entity @s Offers.Recipes[0].sell.components set from entity @s ArmorItems[0].components."minecraft:custom_data".Storage[0]

#Changes emerald trade back to the original
execute if data entity @s Offers.Recipes[1].buyB{count:1} run data modify entity @s Offers.Recipes[1].buy.count set from entity @s ArmorItems[0].components."minecraft:custom_data".Storage[1].ems
execute if data entity @s Offers.Recipes[1].buyB{count:1} run data modify entity @s Offers.Recipes[1].buy.id set value "minecraft:emerald"
execute if data entity @s Offers.Recipes[0].buyB{count:1} run data modify entity @s Offers.Recipes[0].buy.count set from entity @s ArmorItems[0].components."minecraft:custom_data".Storage[1].ems
execute if data entity @s Offers.Recipes[0].buyB{count:1} run data modify entity @s Offers.Recipes[0].buy.id set value "minecraft:emerald"

#Changes price multiplier back to the original
execute if data entity @s Offers.Recipes[1].buyB{count:1} run data modify entity @s Offers.Recipes[1].priceMultiplier set from entity @s ArmorItems[0].components."minecraft:custom_data".Storage[1].priceMultiplier
execute if data entity @s Offers.Recipes[0].buyB{count:1} run data modify entity @s Offers.Recipes[0].priceMultiplier set from entity @s ArmorItems[0].components."minecraft:custom_data".Storage[1].priceMultiplier

#Stop travelling
tag @s remove trader_travel
data remove entity @s Brain.memories."minecraft:potential_job_site"

#Remove the button item used for data storing
data remove entity @s ArmorItems[0]
