USE [balta];

GO

CREATE TABLE [category]
(
    [id] UNIQUEIDENTIFIER NOT NULL,
    [title] NVARCHAR(256) NOT NULL,
    [summary] NVARCHAR(2048) NOT NULL,
    [url] NVARCHAR(512) NOT NULL,
    [featured] BIT NOT NULL,
    [order] INT NOT NULL,
    [description] TEXT NOT NULL,
    CONSTRAINT [pk_category] PRIMARY KEY([id])
);

GO