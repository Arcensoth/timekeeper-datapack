# timekeeper:next/week

# calculate increment
scoreboard players operation $delta temp = $day_of tkeep.output
scoreboard players set $const temp 20
scoreboard players operation $delta temp /= $const temp

# adjust day-of
scoreboard players operation $day_of tkeep.output %= $const temp

# increment total weeks
scoreboard players operation $total_weeks tkeep.output += $delta temp

# increment current week
scoreboard players operation $week_of tkeep.output += $delta temp

# this is where we'd roll years... were we ever to use them

# emit event
function #timekeeper:hooks/every/week
