##
 # loop.mcfunction
 # 
 #
 # Created by .
##
scoreboard players enable @a pay_id
scoreboard players enable @a pay_amount
scoreboard players enable @a pay
scoreboard players enable @a banknote
scoreboard players enable @a banknote2digital
#Триггеры
execute as @a[scores={pay=1..}] run function sect:payment/pay
execute as @a[scores={banknote=1..}] run function sect:banknote/banknote
execute as @a[scores={banknote2digital=1..}] run function sect:banknote/banknote_to_digital

#айди
execute as @a[tag=!ID] run function sect:id/set

execute as @a[scores={sneak=1..}, nbt={SelectedItem:{tag:{Tags:["banknote"]}}}] run function sect:banknote/print_count

#сброс шизы
scoreboard players set @a sneak 0
