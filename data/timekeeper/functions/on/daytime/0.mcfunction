# timekeeper:on/daytime/0

execute if score $daytime tkeep.output matches ..999 run function timekeeper:on/daytime/0/0
execute unless score $daytime tkeep.output matches ..999 run function timekeeper:on/daytime/0/1
