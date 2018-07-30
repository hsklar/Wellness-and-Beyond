CREATE TABLE [dbo].[Review]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(100) NOT NULL, 
    [Summary] NVARCHAR(MAX) NOT NULL, 
    [Body] NVARCHAR(MAX) NULL, 
    [GenreId] INT NOT NULL, 
    [Authorized] BIT NOT NULL, 
    [CreateDateTime] DATETIME NOT NULL DEFAULT getdate(), 
    [UpdateDateTime] DATETIME NOT NULL DEFAULT getdate()
)
