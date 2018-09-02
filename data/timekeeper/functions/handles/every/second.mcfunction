# timekeeper:handles/every/second

execute if score $delta temp matches 1 run tellraw @a[tag=timekeeper.debug.interval] [{"text": "@", "color": "gray"}, {"score": {"name": "$gametime", "objective": "tkeep.output"}}, {"text": " [timekeeper:handles/every/second] Another tick-second has elapsed."}]
execute unless score $delta temp matches 1 run tellraw @a[tag=timekeeper.debug.interval] [{"text": "@", "color": "gray"}, {"score": {"name": "$gametime", "objective": "tkeep.output"}}, {"text": " [timekeeper:handles/every/second] Another "}, {"score": {"name": "$delta", "objective": "temp"}}, {"text": " tick-seconds have elapsed."}]
