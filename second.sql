-- users with the most count of calls
Select count(*) cnt, call_logs.UID, accounts.Name from call_logs 
join accounts on call_logs.UID=accounts.UID group by UID order by cnt desc LIMIT 10;

-- group by call_dir
Select count(*) cnt, call_logs.UID, call_logs.Call_dir, accounts.Name from call_logs 
join accounts on call_logs.UID=accounts.UID group by call_dir,UID order by cnt desc LIMIT 10;

-- users with the longest calls
Select call_logs.Call_id,call_logs.Timestamp_start, call_logs.Timestamp_end, 
call_logs.Timestamp_end-call_logs.Timestamp_start as 'duration', call_logs.UID,accounts.name 
from call_logs join accounts on call_logs.UID=accounts.UID order by duration desc limit 10;
