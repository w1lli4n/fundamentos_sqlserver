USE [balta_canonical];

GO

CREATE OR ALTER PROCEDURE sp_student_progress (@StudentId UNIQUEIDENTIFIER) AS

    SELECT
        [Student].[Name] AS [Student],
        [Course].[Title] AS [Course],
        [StudentCourse].[Progress]
    FROM
        [StudentCourse]
        INNER JOIN [Student] ON [StudentCourse].[StudentId] = [Student].[Id]
        INNER JOIN [Course] ON [StudentCourse].[CourseId] = [Course].[Id]
    WHERE
        [StudentCourse].[StudentId] = @StudentId
        AND [StudentCourse].[Progress] < 100
        AND [StudentCourse].[Progress] > 0
GO
