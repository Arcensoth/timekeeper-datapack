# timekeeper:next/week

# reset current day
scoreboard players set $day_of tkeep.output 0

# increment total weeks
scoreboard players add $total_weeks tkeep.output 1

# increment current week
scoreboard players add $week_of tkeep.output 1

# this is where we'd roll years... were we ever to use them

# emit event
function #timekeeper:hooks/every/week
