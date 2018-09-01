# timekeeper:on/newday

# update the cached day
scoreboard players operation $day tkeep.cache = $day tkeep.output

# update moonphase
function timekeeper:update/moonphase

# emit event
function #timekeeper:hooks/newday
