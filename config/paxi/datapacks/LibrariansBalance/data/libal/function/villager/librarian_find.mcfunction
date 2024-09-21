
#Store the slot that the book is in.
$execute as @e[type=villager,nbt={Brain:{memories:{"minecraft:job_site":{value:{pos:$(cord)}}}}}] run execute if data entity @s Offers.Recipes[0].buyB.id run data modify storage libal:main slot set value 0
$execute as @e[type=villager,nbt={Brain:{memories:{"minecraft:job_site":{value:{pos:$(cord)}}}}}] run execute if data entity @s Offers.Recipes[1].buyB.id run data modify storage libal:main slot set value 1

#Proceed and reset. (found!)
$execute as @e[tag=trader,type=villager,nbt={Brain:{memories:{"minecraft:job_site":{value:{pos:$(cord)}}}}}] run execute if score condition libal.main matches 0 run function libal:villager/librarian_remove
$execute as @e[tag=!trader,type=villager,nbt={Brain:{memories:{"minecraft:job_site":{value:{pos:$(cord)}}}}}] run execute if score condition libal.main matches 1 run function libal:villager/librarian_travel with storage libal:jobs_find
$execute as @e[tag=!trader,type=villager,nbt={Brain:{memories:{"minecraft:job_site":{value:{pos:$(cord)}}}}}] run execute if score condition libal.main matches 1 run function libal:villager/librarian_add with storage libal:main


scoreboard players reset condition libal.main
