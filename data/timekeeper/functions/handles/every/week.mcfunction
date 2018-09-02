# timekeeper:handles/every/week

tellraw @a[tag=timekeeper.debug] [{"text": "@", "color": "gray"}, {"score": {"name": "$gametime", "objective": "tkeep.output"}}, {"text": " [timekeeper:handles/every/week] Another tick-week has elapsed."}]
