# timekeeper:next/hour/overflow

scoreboard players set $const temp 60

scoreboard players operation $delta temp = $minute_of tkeep.output
scoreboard players operation $delta temp /= $const temp

scoreboard players operation $minute_of tkeep.output %= $const temp

scoreboard players operation $total_hours tkeep.output += $delta temp

scoreboard players operation $hour_of tkeep.output += $delta temp
