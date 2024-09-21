# This calculates the price of the book. Should mirror the functionality of the book_price_calculator.py on GitHub

# Two main parameters gathered from the book:
# libal.main enchantments	= NUMBER OF ENCHANTMENTS
# libal.main book_level 	= HIGHEST LEVEL

#Conversion into emerlad block price *threshold*
scoreboard players set threshold libal.main 64 
#How many emeralds in a block
scoreboard players set block libal.main 9
#Say the cost isn't in blocks for now
data merge storage libal:books {cost_blocks:False}

## Calculate the price of the highest book
execute if score book_level libal.main matches 1 run scoreboard players set price libal.main 7
execute if score book_level libal.main matches 2 run scoreboard players set price libal.main 14
execute if score book_level libal.main matches 3 run scoreboard players set price libal.main 21

## Overwrite the price if there is a special book, & continue calculating higher books.
# TIER 4 - 24 Emeralds (mostly sealed books). By design, two stacked Tier 4 enchants should equal to the price of a level 5 book. 
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:frost_walker"}]] run scoreboard players set price libal.main 24
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:fire_aspect"}]] run scoreboard players set price libal.main 24
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:soul_speed"}]] run scoreboard players set price libal.main 24
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:swift_sneak"}]] run scoreboard players set price libal.main 24
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:wind_burst"}]] run scoreboard players set price libal.main 24

# TIER 3 - 36 Emeralds (or a level 4 book)
execute if score book_level libal.main matches 4 run scoreboard players set price libal.main 36
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:flame"}]] run scoreboard players set price libal.main 36
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:infinity"}]] run scoreboard players set price libal.main 36
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:multishot"}]] run scoreboard players set price libal.main 36

# TIER 2 - 48 Emeralds (or a level 5 book)
execute if score book_level libal.main matches 5 run scoreboard players set price libal.main 48
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:channeling"}]] run scoreboard players set price libal.main 48
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:aqua_affinity"}]] run scoreboard players set price libal.main 48
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:silk_touch"}]] run scoreboard players set price libal.main 48

# TIER 1 - 52 Emeralds (basically just mending)
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{enchantments:"minecraft:mending"}]] run scoreboard players set price libal.main 52

## Multiply price by the number of stacked enchantments on the book
scoreboard players operation price libal.main *= enchantments libal.main

## If price is greater than *threshold*, divide into equivalent cost in emerald blocks.
execute if score price libal.main > threshold libal.main run data modify storage libal:books cost_blocks set value True
execute if score price libal.main > threshold libal.main run scoreboard players operation price libal.main /= block libal.main

## Set the price to be known as the cost_final in storage
execute store result storage libal:books cost_final short 1 run scoreboard players get price libal.main

#reset.
scoreboard players reset price libal.main
scoreboard players reset threshold libal.main
scoreboard players reset block libal.main
scoreboard players reset enchantments libal.main