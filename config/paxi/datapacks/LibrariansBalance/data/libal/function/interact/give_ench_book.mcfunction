
#take book if no mod
execute if score #tomereader libal.main matches 0 run function libal:interact/book/take with storage libal:jobs_find

#Remove a librarian from custom trading... Condition = remove a villager
scoreboard players set condition libal.main 0
execute as @e[limit=1,sort=nearest,type=villager,nbt={VillagerData:{profession:"minecraft:librarian"}}] run function libal:villager/librarian_find with storage libal:jobs_find