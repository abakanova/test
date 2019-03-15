SELECT count(call_id)*0.04 as 'expenses' from newschema.call_logs, newschema.numbers  
where call_logs.To!=numbers.Phone_Number and call_dir='out';

SELECT count(call_id)*0.04 as 'expenses' from newschema.call_logs 
join newschema.numbers on call_logs.To!=numbers.Phone_Number
where call_dir='out';
