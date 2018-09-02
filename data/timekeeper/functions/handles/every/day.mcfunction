# timekeeper:handles/every/day

execute if score $delta temp matches 1 run tellraw @a[tag=timekeeper.debug.interval] [{"text": "@", "color": "gray"}, {"score": {"name": "$gametime", "objective": "tkeep.output"}}, {"text": " [timekeeper:handles/every/day] Another tick-day has elapsed."}]
execute unless score $delta temp matches 1 run tellraw @a[tag=timekeeper.debug.interval] [{"text": "@", "color": "gray"}, {"score": {"name": "$gametime", "objective": "tkeep.output"}}, {"text": " [timekeeper:handles/every/day] Another "}, {"score": {"name": "$delta", "objective": "temp"}}, {"text": " tick-days have elapsed."}]
