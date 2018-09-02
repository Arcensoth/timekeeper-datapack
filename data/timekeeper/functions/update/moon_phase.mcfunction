# timekeeper:update/moon_phase

# mod the day by 8, and we have our moon phase
scoreboard players operation $moon_phase tkeep.output = $day tkeep.output
scoreboard players set $const temp 8
scoreboard players operation $moon_phase tkeep.output %= $const temp
