# timekeeper:next/hour

# calculate increment
scoreboard players operation $delta temp = $minute_of tkeep.output
scoreboard players set $const temp 20
scoreboard players operation $delta temp /= $const temp

# adjust minute-of
scoreboard players operation $minute_of tkeep.output %= $const temp

# increment total hours
scoreboard players operation $total_hours tkeep.output += $delta temp

# increment current hour
scoreboard players operation $hour_of tkeep.output += $delta temp

# roll current day, every 24 hours
execute if score $hour_of tkeep.output matches 60.. run function timekeeper:next/day

# emit event
function #timekeeper:hooks/every/hour
