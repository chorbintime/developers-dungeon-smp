#place book if no mod
execute if score #tomereader libal.main matches 0 run function libal:interact/book/place with storage libal:jobs_find

#effects
execute align xyz positioned ~0.5 ~0.5 ~0.5 run playsound minecraft:item.book.put block @a

#Add a librarian for custom trading! Condition = Add a villager
scoreboard players set condition libal.main 1
function libal:villager/librarian_find with storage libal:jobs_find