# timekeeper:module/api/tick

# various time queries
execute store result score $gametime tkeep.output run time query gametime
execute store result score $daytime tkeep.output run time query daytime
execute store result score $day tkeep.output run time query day

# do stuff if the day changes
execute unless score $day tkeep.cache = $day tkeep.output run function timekeeper:on/newday

# update current tick
scoreboard players add $tick tkeep.output 1

# roll current second, every 20 ticks
execute if score $tick tkeep.output matches 20 run function timekeeper:next/second
