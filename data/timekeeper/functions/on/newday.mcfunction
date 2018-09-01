# timekeeper:on/newday

# update the cached day
scoreboard players operation $day tkeep.cache = $day tkeep.output

# update moon phase
function timekeeper:update/moon

# emit event
function #timekeeper:hooks/newday
