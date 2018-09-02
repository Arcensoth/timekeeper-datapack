# timekeeper:next/day/overflow

scoreboard players set $const temp 24

scoreboard players operation $delta temp = $hour_of tkeep.output
scoreboard players operation $delta temp /= $const temp

scoreboard players operation $hour_of tkeep.output %= $const temp

scoreboard players operation $total_days tkeep.output += $delta temp

scoreboard players operation $day_of tkeep.output += $delta temp
