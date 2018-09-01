# timekeeper:next/week

# reset current day
scoreboard players set $day tkeep.output 0

# increment current week
scoreboard players add $week tkeep.output 1

# this is where we'd roll years... were we ever to use them

# emit event
function #timekeeper:hooks/every/week
