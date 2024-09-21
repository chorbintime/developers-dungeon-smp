#For every vanilla enchantments detected, count it as the amount of enchantments on the book (oh my god). 
## Sorted from most important to least.

scoreboard players set enchantments libal.main 0

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:mending"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:feather_falling"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:efficiency"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:unbreaking"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:silk_touch"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:wind_burst"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:swift_sneak"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:soul_speed"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:sharpness"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:protection"}]] run scoreboard players add enchantments libal.main 1

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:fortune"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:infinity"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:looting"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:sweeping_edge"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:density"}]] run scoreboard players add enchantments libal.main 1

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:breach"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:riptide"}]] run scoreboard players add enchantments libal.main 1

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:smite"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:depth_strider"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:respiration"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:aqua_affinity"}]] run scoreboard players add enchantments libal.main 1

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:impaling"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:loyalty"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:channeling"}]] run scoreboard players add enchantments libal.main 1

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:fire_aspect"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:knockback"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:multishot"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:quick_charge"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:flame"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:power"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:punch"}]] run scoreboard players add enchantments libal.main 1

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:thorns"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:projectile_protection"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:fire_protection"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:blast_protection"}]] run scoreboard players add enchantments libal.main 1

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:piercing"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:luck_of_the_sea"}]] run scoreboard players add enchantments libal.main 1

execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:lure"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:frost_walker"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:bane_of_arthropods"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:vanishing_curse"}]] run scoreboard players add enchantments libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:binding_curse"}]] run scoreboard players add enchantments libal.main 1

#Compensate back in case there was no recognised enchantments
execute if score enchantments libal.main matches 0 run scoreboard players add enchantments libal.main 1

#Proceed to calculate the emerald price of the book
function libal:interact/judge/calculate_price_book