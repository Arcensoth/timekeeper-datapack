# timekeeper:update/moon

# mod the day by 8, and we have our moon phase
scoreboard players operation $moon tkeep.output = $day tkeep.output
scoreboard players set $const temp 8
scoreboard players operation $moon tkeep.output %= $const temp
