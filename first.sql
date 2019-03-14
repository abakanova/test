SELECT count(call_id)*0.04 as 'expenses' from newschema.call_logs, newschema.numbers  
where call_logs.UID=numbers.UID and call_dir='out';

SELECT count(call_id)*0.04 as 'expenses' from newschema.call_logs 
join newschema.numbers on call_logs.UID=numbers.UID
where call_dir='out';
