# timekeeper:next/second

# calculate increment
scoreboard players operation $delta temp = $tick_of tkeep.output
scoreboard players set $const temp 20
scoreboard players operation $delta temp /= $const temp

# adjust tick-of
scoreboard players operation $tick_of tkeep.output %= $const temp

# increment total seconds
scoreboard players operation $total_seconds tkeep.output += $delta temp

# increment current second
scoreboard players operation $second_of tkeep.output += $delta temp

# roll current minute, every 60 seconds
execute if score $second_of tkeep.output matches 60.. run function timekeeper:next/minute

# emit event
function #timekeeper:hooks/every/second
