USE [balta_canonical]

GO

CREATE OR ALTER VIEW vw_list_courses AS 

SELECT 
    [Course].[Title],
    [Course].[Tag],
    [Course].[Summary],
    [Category].[Title] AS [Category],
    [Author].[Name] AS [Author],
    [Course].[CreateDate]

FROM
    [course]
    INNER JOIN [Category] ON [Course].[CategoryId] = [Category].[Id]
    INNER JOIN [Author] ON [Course].[AuthorId] = [Author].[Id]

WHERE
    [Active] = 1

GO