#Триггеры
scoreboard objectives add pay_id trigger
scoreboard objectives add pay_amount trigger
scoreboard objectives add pay trigger
scoreboard objectives add banknote trigger
scoreboard objectives add banknote2digital trigger

#Нормальные скорборды (нет)
scoreboard objectives add money dummy "Клинкоины"
scoreboard objectives add ID dummy
scoreboard objectives add transaction dummy
scoreboard objectives add const dummy
scoreboard objectives add banknotes dummy

#Шиза
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time

scoreboard players set 0 const 0
scoreboard players set 10 const 10
scoreboard players set 50 const 50
scoreboard players set 100 const 100
scoreboard players set 200 const 200
scoreboard players set 500 const 500
scoreboard players set 1000 const 1000

execute unless score .global ID matches 0.. run scoreboard players set .global ID 0