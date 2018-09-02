# timekeeper:next/minute/overflow

scoreboard players set $const temp 60

scoreboard players operation $delta temp = $second_of tkeep.output
scoreboard players operation $delta temp /= $const temp

scoreboard players operation $second_of tkeep.output %= $const temp

scoreboard players operation $total_minutes tkeep.output += $delta temp

scoreboard players operation $minute_of tkeep.output += $delta temp
