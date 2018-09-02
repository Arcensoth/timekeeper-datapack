# timekeeper:next/day

execute if score $hour_of tkeep.output matches 24 run function timekeeper:next/day/exact
execute if score $hour_of tkeep.output matches 25.. run function timekeeper:next/day/overflow

function #timekeeper:hooks/every/day

execute if score $day_of tkeep.output matches 7.. run function timekeeper:next/week
