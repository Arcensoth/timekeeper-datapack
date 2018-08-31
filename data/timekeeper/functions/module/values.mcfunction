# timekeeper:module/values

scoreboard players set $installed temp 0
scoreboard players operation $installed temp += $installed tkeep.module

function timekeeper:module/version
