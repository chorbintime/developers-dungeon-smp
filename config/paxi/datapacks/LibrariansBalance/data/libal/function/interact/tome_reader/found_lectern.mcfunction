#ending raycast
scoreboard players set dist= libal.main 0

#check modded? (Tome Reader)
execute if data block ~ ~ ~ {TomeReader:1b} run scoreboard players set #tomereader libal.main 1 
execute unless data block ~ ~ ~ {TomeReader:1b} run scoreboard players set #tomereader libal.main 0 

# Save lectern location
data modify storage libal:jobs_find cord[0] set from block ~ ~ ~ x
data modify storage libal:jobs_find cord[1] set from block ~ ~ ~ y
data modify storage libal:jobs_find cord[2] set from block ~ ~ ~ z

## Judge Enchanted Book (right click)
execute if score sealed_books libal.main matches 1 unless data block ~ ~ ~ Book{components:{"minecraft:custom_data":{sealed:1b}}} run function libal:interact/judge/main with storage libal:jobs_find
execute if score sealed_books libal.main matches -1 run function libal:interact/judge/main with storage libal:jobs_find

## Set checker (for removing trader)
function libal:interact/tome_reader/get_checker

# Tell the user
execute if score sealed_books libal.main matches 1 if data block ~ ~ ~ Book{components:{"minecraft:custom_data":{sealed:1b}}} run title @p[sort=nearest, limit=1] actionbar "This book is sealed."
execute if score sealed_books libal.main matches 1 if data block ~ ~ ~ Book{components:{"minecraft:custom_data":{sealed:1b}}} positioned ~ ~ ~ run playsound block.chiseled_bookshelf.pickup.enchanted block @a
