# timekeeper:module/api/tick

# update time
function timekeeper:update/time

# do stuff if the day changes
execute unless score $day tkeep.cache = $day tkeep.output run function timekeeper:on/day

# do stuff if daytime changes
execute unless score $daytime tkeep.cache = $daytime tkeep.output run function timekeeper:on/daytime

# update current tick
scoreboard players add $tick_of tkeep.output 1

# roll current second, every 20 ticks
execute if score $tick_of tkeep.output matches 20.. run function timekeeper:next/second
