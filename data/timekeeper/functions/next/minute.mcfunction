# timekeeper:next/minute

# reset current second
scoreboard players set $second tkeep.output 0

# increment current minute
scoreboard players add $minute tkeep.output 1

# roll current hour, every 60 minutes
execute if score $minute tkeep.output matches 60 run function timekeeper:next/hour

# emit event
function #timekeeper:hooks/every/minute
