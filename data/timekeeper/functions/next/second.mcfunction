# timekeeper:next/second

# do something different depending on whether ticks overflowed
# this doesn't happen naturally, hence why the 'exact' method is kept as an optimization
execute if score $tick_of tkeep.output matches 20 run function timekeeper:next/second/exact
execute if score $tick_of tkeep.output matches 21.. run function timekeeper:next/second/overflow

# emit event
function #timekeeper:hooks/every/second

# roll current minute, every 60 seconds
execute if score $second_of tkeep.output matches 60.. run function timekeeper:next/minute
