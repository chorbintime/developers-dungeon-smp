#decrementing distance value
scoreboard players remove dist= libal.main 1

#checking for lectern
execute unless data block ~ ~ ~ {TomeReader:1b} if block ~ ~ ~ minecraft:lectern run function libal:interact/found_lectern
execute if data block ~ ~ ~ {TomeReader:1b} run function libal:interact/tome_reader/found_lectern

#looping raycast
execute if score dist= libal.main matches 1.. positioned ^ ^ ^0.01 run function libal:interact/find_lectern