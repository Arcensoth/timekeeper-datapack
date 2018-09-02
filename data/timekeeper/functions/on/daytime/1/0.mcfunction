# timekeeper:on/daytime/1/0

execute if score $daytime tkeep.output matches 13000 run function timekeeper:on/night
execute if score $daytime tkeep.output matches 18000 run function #timekeeper:hooks/time/midnight
