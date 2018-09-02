# timekeeper:handles/every/hour

execute if score $delta temp matches 1 run tellraw @a[tag=timekeeper.debug.interval] [{"text": "@", "color": "gray"}, {"score": {"name": "$gametime", "objective": "tkeep.output"}}, {"text": " [timekeeper:handles/every/hour] Another tick-hour has elapsed."}]
execute unless score $delta temp matches 1 run tellraw @a[tag=timekeeper.debug.interval] [{"text": "@", "color": "gray"}, {"score": {"name": "$gametime", "objective": "tkeep.output"}}, {"text": " [timekeeper:handles/every/hour] Another "}, {"score": {"name": "$delta", "objective": "temp"}}, {"text": " tick-hours have elapsed."}]
