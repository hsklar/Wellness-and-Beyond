SELECT 
Review.Id, Review.Title, Genre.Name
FROM
Review
INNER JOIN Genre On Review.GenreId=Genre.Id