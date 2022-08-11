##
 # init.mcfunction
 # 
 #
 # Created by .
##
scoreboard objectives add pay_id trigger
scoreboard objectives add pay_amount trigger
scoreboard objectives add pay trigger
scoreboard objectives add money dummy "Клинкоины"
scoreboard objectives add ID dummy
scoreboard objectives add transaction dummy
scoreboard objectives add const dummy

scoreboard players set 0 const 0

execute unless score .global ID matches 0.. run scoreboard players set .global ID 0