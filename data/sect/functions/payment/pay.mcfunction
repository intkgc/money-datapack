tag @s add sender

execute if score @s money < @s pay_amount run function sect:msgs/not_enough_money
execute if score @s pay_id > .global ID run function sect:msgs/non_existent_id

scoreboard players operation pay_id transaction = @s pay_id
scoreboard players operation pay_amount transaction = @s pay_amount

execute as @a run execute if score @s ID = pay_id transaction run tag @s add recipient
execute unless entity @a[tag=recipient] run function sect:msgs/player_offline

execute if score @s money >= @s pay_amount if entity @a[tag=recipient] run function sect:payment/create_transaction

scoreboard players set @s pay 0
scoreboard players set @s pay_amount -1
scoreboard players set @s pay_id -1
scoreboard players set pay_id transaction -1
scoreboard players set pay_amount transaction -1
tag @a remove sender
tag @a remove recipient