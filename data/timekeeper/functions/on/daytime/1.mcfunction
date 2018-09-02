# timekeeper:on/daytime/1

execute if score $daytime tkeep.output matches 23999 run function #timekeeper:hooks/time/end
execute unless score $daytime tkeep.output matches 23999 run function timekeeper:on/daytime/1/0
