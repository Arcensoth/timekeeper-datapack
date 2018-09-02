# timekeeper:next/day

# calculate increment
scoreboard players operation $delta temp = $hour_of tkeep.output
scoreboard players set $const temp 20
scoreboard players operation $delta temp /= $const temp

# adjust hour-of
scoreboard players operation $hour_of tkeep.output %= $const temp

# increment total days
scoreboard players operation $total_days tkeep.output += $delta temp

# increment current day
scoreboard players operation $day_of tkeep.output += $delta temp

# roll current week, every 7 days
execute if score $day_of tkeep.output matches 60.. run function timekeeper:next/week

# emit event
function #timekeeper:hooks/every/day
