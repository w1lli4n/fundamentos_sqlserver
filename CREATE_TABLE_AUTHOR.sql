USE [balta];

GO

CREATE TABLE [author]
(
    [id] UNIQUEIDENTIFIER NOT NULL,
    [name] NVARCHAR(64) NOT NULL,
    [title] NVARCHAR(64) NOT NULL,
    [image] NVARCHAR(1024) NOT NULL,
    [bio] NVARCHAR(2048) NOT NULL,
    [url] NVARCHAR(512) NULL,
    [email] NVARCHAR(128) NOT NULL,
    [type] TINYINT NOT NULL,
    CONSTRAINT [pk_author] PRIMARY KEY([id])
);

GO