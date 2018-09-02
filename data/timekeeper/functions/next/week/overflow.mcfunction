# timekeeper:next/week/overflow

scoreboard players set $const temp 7

scoreboard players operation $delta temp = $day_of tkeep.output
scoreboard players operation $delta temp /= $const temp

scoreboard players operation $day_of tkeep.output %= $const temp

scoreboard players operation $total_weeks tkeep.output += $delta temp

scoreboard players operation $week_of tkeep.output += $delta temp
