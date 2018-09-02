# timekeeper:on/daytime/0/1

execute if score $daytime tkeep.output matches 1000 run function #timekeeper:hooks/time/morning
execute if score $daytime tkeep.output matches 6000 run function #timekeeper:hooks/time/noon
