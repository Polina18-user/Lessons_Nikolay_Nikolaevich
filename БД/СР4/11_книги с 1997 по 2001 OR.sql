SELECT Book.Author, Book.Title, Book.Publisher, Book.BookYear  
FROM Book  
WHERE (Book.BookYear >= 1997 and Book.BookYear <= 2001) AND (Book.Publisher = 'Азбука' or  Book.Publisher = 'Политехника');  