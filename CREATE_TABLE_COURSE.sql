USE [balta];

GO

CREATE TABLE [course]
(
    [id] UNIQUEIDENTIFIER NOT NULL,
    [title] NVARCHAR(256) NOT NULL,
    [tag] NVARCHAR(32) NOT NULL,
    [summary] NVARCHAR(2048) NOT NULL,
    [url] NVARCHAR(512) NOT NULL,
    [duration_in_minutes] INT NOT NULL,
    [active] BIT NOT NULL,
    [featured] BIT NOT NULL,
    [level] TINYINT NOT NULL,
    [createdate] DATETIME NOT NULL,
    [last_update] DATETIME NOT NULL,
    [free] BIT NOT NULL,
    [author_id] UNIQUEIDENTIFIER NOT NULL,
    [category_id] UNIQUEIDENTIFIER NOT NULL,
    [tags] NVARCHAR(128) NOT NULL,
    CONSTRAINT [pk_course] PRIMARY KEY([id]),
    CONSTRAINT [fk_course_author__author_id] FOREIGN KEY([author_id]) REFERENCES [author]([id]),
    CONSTRAINT [fk_course_category__category_id] FOREIGN KEY([category_id]) REFERENCES [category]([id])
);

GO