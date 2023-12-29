USE [balta_canonical];

GO

CREATE OR ALTER PROCEDURE sp_delete_student (@StudentId UNIQUEIDENTIFIER) AS

    BEGIN TRANSACTION
        DELETE FROM 
            [StudentCourse]
        WHERE
            [StudentId] = @StudentId
        
        DELETE FROM 
            [Student]
        WHERE
            [Student].[Id] = @StudentId
    COMMIT