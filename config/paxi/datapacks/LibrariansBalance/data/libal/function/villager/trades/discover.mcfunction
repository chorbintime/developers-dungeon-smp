## This runs when the villager arrives at their workstation.
#Remove travelling tag
tag @s remove trader_travel

#Run particles & effects

#confused: no book
execute unless data entity @s Offers.Recipes[0].buyB{count:1} unless data entity @s Offers.Recipes[1].buyB{count:1} at @s run playsound block.chiseled_bookshelf.pickup block @a ~ ~ ~ 0.6
execute unless data entity @s Offers.Recipes[0].buyB{count:1} unless data entity @s Offers.Recipes[1].buyB{count:1} at @s run playsound entity.villager.trade block @a ~ ~ ~ 0.7
execute unless data entity @s Offers.Recipes[0].buyB{count:1} unless data entity @s Offers.Recipes[1].buyB{count:1} at @s run particle angry_villager ~ ~1.5 ~ 0 0 0 0 1

#success: a valid book is on the lectern
execute if data entity @s Offers.Recipes[1].buyB{count:1} at @s run playsound entity.villager.work_librarian block @a 
execute if data entity @s Offers.Recipes[0].buyB{count:1} at @s run playsound entity.villager.work_librarian block @a 