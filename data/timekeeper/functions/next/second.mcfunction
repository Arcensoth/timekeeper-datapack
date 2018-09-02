# timekeeper:next/second

# reset current tick
scoreboard players set $tick_of tkeep.output 0

# increment total seconds
scoreboard players add $total_seconds tkeep.output 1

# increment current second
scoreboard players add $second_of tkeep.output 1

# roll current minute, every 60 seconds
execute if score $second_of tkeep.output matches 60.. run function timekeeper:next/minute

# emit event
function #timekeeper:hooks/every/second
