# timekeeper:next/hour

execute if score $minute_of tkeep.output matches 60 run function timekeeper:next/hour/exact
execute if score $minute_of tkeep.output matches 61.. run function timekeeper:next/hour/overflow

function #timekeeper:hooks/every/hour

execute if score $minute_of tkeep.output matches 24.. run function timekeeper:next/day
