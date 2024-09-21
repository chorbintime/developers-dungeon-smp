execute unless entity @e[type=minecraft:item_display, tag=checker] run summon minecraft:item_display ~ ~ ~ {Tags:["checker"]}
tp @e[type=minecraft:item_display, tag=checker] ~ ~ ~
execute as @e[type=minecraft:item_display, tag=checker] run function libal:interact/tome_reader/checker