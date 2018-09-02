# timekeeper:handles/every/minute

execute if score $delta temp matches 1 run tellraw @a[tag=timekeeper.debug] [{"text": "@", "color": "gray"}, {"score": {"name": "$gametime", "objective": "tkeep.output"}}, {"text": " [timekeeper:handles/every/minute] Another tick-minute has elapsed."}]
execute unless score $delta temp matches 1 run tellraw @a[tag=timekeeper.debug] [{"text": "@", "color": "gray"}, {"score": {"name": "$gametime", "objective": "tkeep.output"}}, {"text": " [timekeeper:handles/every/minute] Another "}, {"score": {"name": "$delta", "objective": "temp"}}, {"text": " tick-minutes have elapsed."}]
