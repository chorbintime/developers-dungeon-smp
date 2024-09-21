#Revoke the advancement of which it is triggered from
advancement revoke @s only libal:interact_villager

#executes to filtering the trades
execute if score cap_enchant_level libal.main matches 1 run execute as @e[type=villager,sort=nearest,limit=8,nbt={VillagerData:{profession:"minecraft:librarian"}}] run function libal:villager/trades/reduce
execute if score no_mending libal.main matches 1 run execute as @e[type=villager,sort=nearest,limit=8,nbt={VillagerData:{profession:"minecraft:librarian"}}] unless data entity @s VillagerData{type:"minecraft:swamp"} run function libal:villager/trades/replace with storage libal:books delisted