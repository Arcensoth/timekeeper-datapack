# timekeeper:next/second/exact

scoreboard players set $delta temp 1

# adjust tick-of
scoreboard players set $tick_of tkeep.output 0

# increment total seconds
scoreboard players add $total_seconds tkeep.output 1

# increment current second
scoreboard players add $second_of tkeep.output 1
