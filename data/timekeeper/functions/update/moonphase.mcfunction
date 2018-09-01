# timekeeper:update/moonphase

# mod the day by 8, and we have our moonphase
scoreboard players operation $moonphase tkeep.output = $day tkeep.output
scoreboard players set $const temp 8
scoreboard players operation $moonphase tkeep.output %= $const temp
