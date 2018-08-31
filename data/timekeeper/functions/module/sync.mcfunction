# timekeeper:module/sync

function timekeeper:module/values

scoreboard players set $sync temp 0

execute if score $installed temp matches ..0 run scoreboard players set $sync temp 1

execute if score $installed temp matches 1.. if score $vmajor tkeep.module = $vmajor temp if score $vminor tkeep.module = $vminor temp if score $vpatch tkeep.module = $vpatch temp if score $vdev tkeep.module = $vdev temp run scoreboard players set $sync temp 1

execute if score $sync temp matches ..0 if score $vdev temp matches ..0 if score $vdev tkeep.module matches ..0 run tellraw @s [{"text": "[Timekeeper]", "color": "aqua"}, {"text": " Yikes! Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": " is active but ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "tkeep.module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "tkeep.module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "tkeep.module"}}]}, {"text": " is installed!", "color": "red"}]
execute if score $sync temp matches ..0 if score $vdev temp matches ..0 if score $vdev tkeep.module matches 1.. run tellraw @s [{"text": "[Timekeeper]", "color": "aqua"}, {"text": " Yikes! Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": " is active but ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "tkeep.module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "tkeep.module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "tkeep.module"}}]}, {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "tkeep.module"}}]}, {"text": " is installed!", "color": "red"}]
execute if score $sync temp matches ..0 if score $vdev temp matches 1.. if score $vdev tkeep.module matches ..0 run tellraw @s [{"text": "[Timekeeper]", "color": "aqua"}, {"text": " Yikes! Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "temp"}}]}, {"text": " is active but ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "tkeep.module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "tkeep.module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "tkeep.module"}}]}, {"text": " is installed!", "color": "red"}]
execute if score $sync temp matches ..0 if score $vdev temp matches 1.. if score $vdev tkeep.module matches 1.. run tellraw @s [{"text": "[Timekeeper]", "color": "aqua"}, {"text": " Yikes! Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "temp"}}]}, {"text": " is active but ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "tkeep.module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "tkeep.module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "tkeep.module"}}]}, {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "tkeep.module"}}]}, {"text": " is installed!", "color": "red"}]

execute if score $sync temp matches ..0 run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 2.0 2.0
