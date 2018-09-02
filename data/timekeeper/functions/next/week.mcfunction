# timekeeper:next/week

execute if score $day_of tkeep.output matches 7 run function timekeeper:next/week/exact
execute if score $day_of tkeep.output matches 8.. run function timekeeper:next/week/overflow

function #timekeeper:hooks/every/week

# this is where we'd roll years... were we ever to use them
