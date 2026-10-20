SELECT Title, Author, Publisher 
FROM `library`.`Book`
WHERE BookYear >= 1999 and  (Author LIKE _utf8mb4'Г%' or Publisher LIKE _utf8mb4'%a')
ORDER BY Title DESC 