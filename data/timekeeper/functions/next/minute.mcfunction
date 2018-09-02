# timekeeper:next/minute

# calculate increment
scoreboard players operation $delta temp = $second_of tkeep.output
scoreboard players set $const temp 20
scoreboard players operation $delta temp /= $const temp

# adjust second-of
scoreboard players operation $second_of tkeep.output %= $const temp

# increment total minutes
scoreboard players operation $total_minutes tkeep.output += $delta temp

# increment current minute
scoreboard players operation $minute_of tkeep.output += $delta temp

# roll current hour, every 60 minutes
execute if score $minute_of tkeep.output matches 60.. run function timekeeper:next/hour

# emit event
function #timekeeper:hooks/every/minute
