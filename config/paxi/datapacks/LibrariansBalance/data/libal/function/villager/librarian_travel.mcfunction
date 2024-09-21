#Start walking & tag
$execute as @s run data modify entity @s Brain.memories."minecraft:potential_job_site" merge value {value: {pos:$(cord), dimension: "minecraft:overworld"}}
tag @s add trader_travel