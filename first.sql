SELECT * FROM newschema.call_logs;

SELECT count(*) from newschema.call_logs;

SELECT * FROM newschema.call_logs where call_dir='out';

SELECT count(*) FROM newschema.call_logs where call_dir='out';

-- forwarding calls
SELECT * FROM call_logs log, call_forwarding forw 
where log.From=forw.From and log.To=forw.To;

-- outgoing forwarding calls
SELECT * FROM call_logs log, call_forwarding forw 
where log.From=forw.From and log.To=forw.To and call_dir='out';

-- forwarding calls group by UID
SELECT count(*) FROM call_logs log, call_forwarding forw 
where log.From=forw.From and log.To=forw.To GROUP BY log.UID;

-- group by UID
SELECT count(*), log.UID FROM call_logs log
 GROUP BY log.UID;

-- all outgoing calls to phone numbers from Numbers table
select count(*) from call_logs
join numbers on call_logs.To=numbers.Phone_Number
where call_dir='out' and numbers.UID;

select count(*) from call_logs
left join numbers on call_logs.To=numbers.Phone_Number
where call_dir='out' and numbers.UID;

-- other outgoing calls 
select count(*) from call_logs
left join numbers on call_logs.To=numbers.Phone_Number
where call_dir='out' and numbers.UID is NULL;

-- total expenses for other outgoing calls
select count(*)*0.04 as 'expenses' from call_logs
left join numbers on call_logs.To=numbers.Phone_Number
where call_dir='out' and numbers.UID is NULL;
 
 
