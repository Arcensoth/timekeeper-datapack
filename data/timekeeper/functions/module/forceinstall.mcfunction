# timekeeper:module/forceinstall

function timekeeper:module/api/setup

scoreboard objectives add tkeep.module dummy
scoreboard players set $installed tkeep.module 1

function timekeeper:module/values

scoreboard players operation $vmajor tkeep.module = $vmajor temp
scoreboard players operation $vminor tkeep.module = $vminor temp
scoreboard players operation $vpatch tkeep.module = $vpatch temp
scoreboard players operation $vdev tkeep.module = $vdev temp

tellraw @s [{"text": "[Timekeeper]", "color": "aqua"}, {"text": " Module has been ", "color": "white"}, {"text": "installed", "color": "green"}, {"text": ".", "color": "white"}]

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5

function timekeeper:module/scan
