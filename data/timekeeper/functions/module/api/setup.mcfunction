# timekeeper:module/api/setup

scoreboard objectives add tkeep.config dummy
scoreboard objectives add tkeep.output dummy
scoreboard objectives add tkeep.cache dummy

# defaults
scoreboard players set $cycle tkeep.config 0
scoreboard players set $speed tkeep.config 0
