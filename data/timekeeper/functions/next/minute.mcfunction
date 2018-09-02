# timekeeper:next/minute

execute if score $second_of tkeep.output matches 60 run function timekeeper:next/minute/exact
execute if score $second_of tkeep.output matches 61.. run function timekeeper:next/minute/overflow

function #timekeeper:hooks/every/minute

execute if score $minute_of tkeep.output matches 60.. run function timekeeper:next/hour
