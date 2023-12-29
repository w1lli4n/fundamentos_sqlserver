USE [balta];

GO

CREATE TABLE [student](
    [id] UNIQUEIDENTIFIER NOT NULL,
    [name] NVARCHAR(64) NOT NULL,
    [email] NVARCHAR(64) NOT NULL,
    [document] CHAR(11) NULL,
    [phone] CHAR(11) NULL,
    [birthdate] DATETIME NULL,
    [createdate] DATETIME NOT NULL DEFAULT(GETUTCDATE()),
    CONSTRAINT [pk_student] PRIMARY KEY([id])
);

GO