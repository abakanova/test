# first
Запросы выполнены исходя из условия, что 0,04 - это стоимость одного звонка, а не минуты. Запрос  учитывает, что в колонке "To" в таблице "call_logs" отображаются номера на которые совершены звонки. Также учитывается переадресация звонков, то есть они тоже будут учитываться в запросе, если произошла переадресация на номер, не содержащийся в таблице "Numbers".
 
# second 
Активность пользователей рассматривается как максимальное количество звонков и максильная длительность звонков, совершеннных пользователями. Длительность звонков считается в секундах. У некоторых "UID" больше одного имени в таблице "accounts", следовательно можно предположить, что это разные пользователи и их стоит рассматривать отдельно. 
