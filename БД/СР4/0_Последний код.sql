SELECT *  
FROM Book  
WHERE Author LIKE 'А*' OR BookYear> 2000 AND NOT Publisher LIKE 
'[И,П]*';