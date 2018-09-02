# timekeeper:next/minute

# reset current second
scoreboard players set $second_of tkeep.output 0

# increment total minutes
scoreboard players add $total_minutes tkeep.output 1

# increment current minute
scoreboard players add $minute_of tkeep.output 1

# roll current hour, every 60 minutes
execute if score $minute_of tkeep.output matches 60 run function timekeeper:next/hour

# emit event
function #timekeeper:hooks/every/minute
