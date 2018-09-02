# timekeeper:handles/every/day

tellraw @a[tag=timekeeper.debug] [{"text": "@", "color": "gray"}, {"score": {"name": "$gametime", "objective": "tkeep.output"}}, {"text": " [timekeeper:handles/every/day] Another tick-day has elapsed."}]
