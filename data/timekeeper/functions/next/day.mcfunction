# timekeeper:next/day

# reset current hour
scoreboard players set $hour_of tkeep.output 0

# increment total days
scoreboard players add $total_days tkeep.output 1

# increment current day
scoreboard players add $day_of tkeep.output 1

# roll current week, every 7 days
execute if score $day_of tkeep.output matches 7.. run function timekeeper:next/week

# emit event
function #timekeeper:hooks/every/day
