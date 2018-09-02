# timekeeper:on/daytime/0/0

execute if score $daytime tkeep.output matches 0 run function #timekeeper:hooks/time/start
execute if score $daytime tkeep.output matches 999 run function #timekeeper:hooks/time/before_morning
