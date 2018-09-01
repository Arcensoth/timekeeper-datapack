# timekeeper:next/day

# reset current hour
scoreboard players set $hour tkeep.output 0

# increment total days
scoreboard players add $days tkeep.output 1

# increment current day
scoreboard players add $day tkeep.output 1

# roll current week, every 7 days
execute if score $day tkeep.output matches 7 run function timekeeper:next/week

# emit event
function #timekeeper:hooks/every/day
