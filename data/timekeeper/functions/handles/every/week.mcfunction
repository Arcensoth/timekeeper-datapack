# timekeeper:handles/every/week

execute if score $delta temp matches 1 run tellraw @a[tag=timekeeper.debug.interval] [{"text": "@", "color": "gray"}, {"score": {"name": "$gametime", "objective": "tkeep.output"}}, {"text": " [timekeeper:handles/every/week] Another tick-week has elapsed."}]
execute unless score $delta temp matches 1 run tellraw @a[tag=timekeeper.debug.interval] [{"text": "@", "color": "gray"}, {"score": {"name": "$gametime", "objective": "tkeep.output"}}, {"text": " [timekeeper:handles/every/week] Another "}, {"score": {"name": "$delta", "objective": "temp"}}, {"text": " tick-weeks have elapsed."}]
