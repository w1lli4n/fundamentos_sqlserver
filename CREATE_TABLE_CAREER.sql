USE [balta];

GO

CREATE TABLE [career]
(
    [id] UNIQUEIDENTIFIER NOT NULL,
    [title] NVARCHAR(256) NOT NULL,
    [summary] NVARCHAR(2048) NOT NULL,
    [url] NVARCHAR(512) NOT NULL,
    [duration_in_minutes] INT NOT NULL,
    [active] BIT NOT NULL,
    [featured] BIT NOT NULL,
    [tags] NVARCHAR(128) NOT NULL,
    CONSTRAINT [pk_career] PRIMARY KEY([id])
);

GO