
#These are the trades that the villager will replace. It puts some books from storage (libal:books) in their place.
#To add your own: For each slot, copy the command under itself and change the enchantment to what you want to filter.

#Slot 0
$execute if data entity @s[tag=!trader] Offers.Recipes[0].sell.components."minecraft:stored_enchantments".levels.$(1) run data modify entity @s Offers.Recipes[0].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[0].sell.components."minecraft:stored_enchantments".levels.$(2) run data modify entity @s Offers.Recipes[0].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[0].sell.components."minecraft:stored_enchantments".levels.$(3) run data modify entity @s Offers.Recipes[0].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[0].sell.components."minecraft:stored_enchantments".levels.$(4) run data modify entity @s Offers.Recipes[0].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[0]

#Slot 1
$execute if data entity @s[tag=!trader] Offers.Recipes[1].sell.components."minecraft:stored_enchantments".levels.$(1) run data modify entity @s Offers.Recipes[1].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[1].sell.components."minecraft:stored_enchantments".levels.$(2) run data modify entity @s Offers.Recipes[1].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[1].sell.components."minecraft:stored_enchantments".levels.$(3) run data modify entity @s Offers.Recipes[1].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[0]
$execute if data entity @s[tag=!trader] Offers.Recipes[1].sell.components."minecraft:stored_enchantments".levels.$(4) run data modify entity @s Offers.Recipes[1].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[0]

#Slot 2
$execute if data entity @s Offers.Recipes[2].sell.components."minecraft:stored_enchantments".levels.$(1) run data modify entity @s Offers.Recipes[2].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[1]
$execute if data entity @s Offers.Recipes[2].sell.components."minecraft:stored_enchantments".levels.$(2) run data modify entity @s Offers.Recipes[2].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[1]
$execute if data entity @s Offers.Recipes[2].sell.components."minecraft:stored_enchantments".levels.$(3) run data modify entity @s Offers.Recipes[2].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[1]
$execute if data entity @s Offers.Recipes[2].sell.components."minecraft:stored_enchantments".levels.$(4) run data modify entity @s Offers.Recipes[2].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[1]

#Slot 3
$execute if data entity @s Offers.Recipes[3].sell.components."minecraft:stored_enchantments".levels.$(1) run data modify entity @s Offers.Recipes[3].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[2]
$execute if data entity @s Offers.Recipes[3].sell.components."minecraft:stored_enchantments".levels.$(2) run data modify entity @s Offers.Recipes[3].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[2]
$execute if data entity @s Offers.Recipes[3].sell.components."minecraft:stored_enchantments".levels.$(3) run data modify entity @s Offers.Recipes[3].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[2]
$execute if data entity @s Offers.Recipes[3].sell.components."minecraft:stored_enchantments".levels.$(4) run data modify entity @s Offers.Recipes[3].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[2]

#Slot 4
$execute if data entity @s Offers.Recipes[4].sell.components."minecraft:stored_enchantments".levels.$(1) run data modify entity @s Offers.Recipes[4].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[0]
$execute if data entity @s Offers.Recipes[4].sell.components."minecraft:stored_enchantments".levels.$(2) run data modify entity @s Offers.Recipes[4].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[0]
$execute if data entity @s Offers.Recipes[4].sell.components."minecraft:stored_enchantments".levels.$(3) run data modify entity @s Offers.Recipes[4].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[0]
$execute if data entity @s Offers.Recipes[4].sell.components."minecraft:stored_enchantments".levels.$(4) run data modify entity @s Offers.Recipes[4].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[0]

#Slot 5
$execute if data entity @s Offers.Recipes[5].sell.components."minecraft:stored_enchantments".levels.$(1) run data modify entity @s Offers.Recipes[5].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[1]
$execute if data entity @s Offers.Recipes[5].sell.components."minecraft:stored_enchantments".levels.$(2) run data modify entity @s Offers.Recipes[5].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[1]
$execute if data entity @s Offers.Recipes[5].sell.components."minecraft:stored_enchantments".levels.$(3) run data modify entity @s Offers.Recipes[5].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[1]
$execute if data entity @s Offers.Recipes[5].sell.components."minecraft:stored_enchantments".levels.$(4) run data modify entity @s Offers.Recipes[5].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[1]

#Slot 6
$execute if data entity @s Offers.Recipes[6].sell.components."minecraft:stored_enchantments".levels.$(1) run data modify entity @s Offers.Recipes[6].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[2]
$execute if data entity @s Offers.Recipes[6].sell.components."minecraft:stored_enchantments".levels.$(2) run data modify entity @s Offers.Recipes[6].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[2]
$execute if data entity @s Offers.Recipes[6].sell.components."minecraft:stored_enchantments".levels.$(3) run data modify entity @s Offers.Recipes[6].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[2]
$execute if data entity @s Offers.Recipes[6].sell.components."minecraft:stored_enchantments".levels.$(4) run data modify entity @s Offers.Recipes[6].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[2]

#Slot 7
$execute if data entity @s Offers.Recipes[7].sell.components."minecraft:stored_enchantments".levels.$(1) run data modify entity @s Offers.Recipes[7].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[0]
$execute if data entity @s Offers.Recipes[7].sell.components."minecraft:stored_enchantments".levels.$(2) run data modify entity @s Offers.Recipes[7].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[0]
$execute if data entity @s Offers.Recipes[7].sell.components."minecraft:stored_enchantments".levels.$(3) run data modify entity @s Offers.Recipes[7].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[0]
$execute if data entity @s Offers.Recipes[7].sell.components."minecraft:stored_enchantments".levels.$(4) run data modify entity @s Offers.Recipes[7].sell.components."minecraft:stored_enchantments".levels set from storage libal:books replacements[0]
