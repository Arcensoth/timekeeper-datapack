# timekeeper:handles/every/hour

tellraw @a[tag=timekeeper.debug] [{"text": "@", "color": "gray"}, {"score": {"name": "$gametime", "objective": "tkeep.output"}}, {"text": " [timekeeper:handles/every/hour] Another tick-hour has elapsed."}]
