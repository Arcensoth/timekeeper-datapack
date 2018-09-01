# timekeeper:module/api/tick

# update time
function timekeeper:update/time

# do stuff if the day changes
execute unless score $day tkeep.cache = $day tkeep.output run function timekeeper:on/newday

# update current tick
scoreboard players add $tick tkeep.output 1

# roll current second, every 20 ticks
execute if score $tick tkeep.output matches 20 run function timekeeper:next/second
