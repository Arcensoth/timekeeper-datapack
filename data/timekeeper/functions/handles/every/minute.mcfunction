# timekeeper:handles/every/minute

tellraw @a[tag=timekeeper.debug] [{"text": "@", "color": "gray"}, {"score": {"name": "$gametime", "objective": "tkeep.output"}}, {"text": " [timekeeper:handles/every/minute] Another tick-minute has elapsed."}]
