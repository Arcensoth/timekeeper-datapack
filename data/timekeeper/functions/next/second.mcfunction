# timekeeper:next/second

# reset current tick
scoreboard players set $tick tkeep.output 0

# increment current second
scoreboard players add $second tkeep.output 1

# roll current minute, every 60 seconds
execute if score $second tkeep.output matches 60 run function timekeeper:next/minute

# emit event
function #timekeeper:hooks/every/second
