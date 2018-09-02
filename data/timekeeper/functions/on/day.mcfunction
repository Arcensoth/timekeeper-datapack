# timekeeper:on/day

# update the cached day
scoreboard players operation $day tkeep.cache = $day tkeep.output

# update moon phase
function timekeeper:update/moon_phase

# emit event
function #timekeeper:hooks/newday

# invalidate cached daytime to force an update
# this is necessary for cases where time advances in full days (some multiple of 24000 ticks)
scoreboard players set $daytime tkeep.cache -1
