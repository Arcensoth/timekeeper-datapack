# timekeeper:on/daytime

# update the cached daytime
scoreboard players operation $daytime tkeep.cache = $daytime tkeep.output

# use binary partitioning to minimize the number of 20Hz checks
# probably overkill here, but what the heck
execute if score $daytime tkeep.output matches ..6000 run function timekeeper:on/daytime/0
execute unless score $daytime tkeep.output matches ..6000 run function timekeeper:on/daytime/1
