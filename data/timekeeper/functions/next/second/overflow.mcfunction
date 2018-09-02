# timekeeper:next/second/overflow

scoreboard players set $const temp 20

# calculate increment
scoreboard players operation $delta temp = $tick_of tkeep.output
scoreboard players operation $delta temp /= $const temp

# adjust tick-of
scoreboard players operation $tick_of tkeep.output %= $const temp

# increment total seconds
scoreboard players operation $total_seconds tkeep.output += $delta temp

# increment current second
scoreboard players operation $second_of tkeep.output += $delta temp
