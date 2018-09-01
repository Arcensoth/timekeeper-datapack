# timekeeper:next/hour

# reset current minute
scoreboard players set $minute tkeep.output 0

# increment total hours
scoreboard players add $hours tkeep.output 1

# increment current hour
scoreboard players add $hour tkeep.output 1

# roll current day, every 24 hours
execute if score $hour tkeep.output matches 24 run function timekeeper:next/day

# emit event
function #timekeeper:hooks/every/hour
