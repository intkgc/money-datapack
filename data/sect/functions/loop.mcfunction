##
 # loop.mcfunction
 # 
 #
 # Created by .
##
scoreboard players enable @a pay_id
scoreboard players enable @a pay_amount
scoreboard players enable @a pay
execute as @e[scores={pay=1..}] run function sect:payment/pay

#айди
execute as @a[tag=!ID] run function sect:id/set
