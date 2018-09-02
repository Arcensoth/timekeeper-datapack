# timekeeper:on/night

# emit event
function #timekeeper:hooks/time/night

# this is where we activate moon hooks
execute if score $moon_phase tkeep.output matches 0 run function #timekeeper:hooks/moon/0
execute if score $moon_phase tkeep.output matches 1 run function #timekeeper:hooks/moon/1
execute if score $moon_phase tkeep.output matches 2 run function #timekeeper:hooks/moon/2
execute if score $moon_phase tkeep.output matches 3 run function #timekeeper:hooks/moon/3
execute if score $moon_phase tkeep.output matches 4 run function #timekeeper:hooks/moon/4
execute if score $moon_phase tkeep.output matches 5 run function #timekeeper:hooks/moon/5
execute if score $moon_phase tkeep.output matches 6 run function #timekeeper:hooks/moon/6
execute if score $moon_phase tkeep.output matches 7 run function #timekeeper:hooks/moon/7
