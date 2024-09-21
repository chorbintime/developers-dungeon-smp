
#Check book Lvl (I, II, III, IV, V)
#Get the highest level book

#Set level to scoreboard
scoreboard players set book_level libal.main 0
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:1}]] run scoreboard players set book_level libal.main 1
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:2}]] run scoreboard players set book_level libal.main 2
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:3}]] run scoreboard players set book_level libal.main 3
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:4}]] run scoreboard players set book_level libal.main 4
execute if items entity @s armor.legs *[minecraft:stored_enchantments~[{levels:5}]] run scoreboard players set book_level libal.main 5

#Proceed to count the number of enchantments on the book
function libal:interact/judge/ench_book with storage libal:books
