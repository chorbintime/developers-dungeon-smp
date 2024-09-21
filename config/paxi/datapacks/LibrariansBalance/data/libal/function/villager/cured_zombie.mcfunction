#revoking advancement
advancement revoke @s only libal:cured_zombie

execute as @e[tag=!trader,nbt={Offers:{Recipes:[{sell:{components:{"minecraft:custom_data":{traded: 1b}}}}]}}] run execute if data entity @s Offers.Recipes[1].buyB{count:1} run data modify entity @s Offers.Recipes[1].sell set value {count:1,id:"minecraft:enchanted_book",components:{"minecraft:stored_enchantments":{levels:{"minecraft:bane_of_arthropods":1}}}}
execute as @e[tag=!trader,nbt={Offers:{Recipes:[{sell:{components:{"minecraft:custom_data":{traded: 1b}}}}]}}] run execute if data entity @s Offers.Recipes[0].buyB{count:1} run data modify entity @s Offers.Recipes[0].sell set value {count:1,id:"minecraft:enchanted_book",components:{"minecraft:stored_enchantments":{levels:{"minecraft:blast_protection":1}}}}


