#copying giving item, 2 @e calls because this doesn't run often enough to optimize tbh
execute at @s anchored eyes run summon minecraft:item ^ ^ ^ {Tags:["libal_new"],Item:{id:"minecraft:enchanted_book"}}
execute as @e[type=item,tag=libal_new,limit=1] run function libal:interact/book/give_as_item

#updating blockstate
execute if block ~ ~ ~ minecraft:lectern[facing=east] run setblock ~ ~ ~ minecraft:lectern[facing=east,has_book=false]
execute if block ~ ~ ~ minecraft:lectern[facing=west] run setblock ~ ~ ~ minecraft:lectern[facing=west,has_book=false]
execute if block ~ ~ ~ minecraft:lectern[facing=north] run setblock ~ ~ ~ minecraft:lectern[facing=north,has_book=false]
execute if block ~ ~ ~ minecraft:lectern[facing=south] run setblock ~ ~ ~ minecraft:lectern[facing=south,has_book=false]

