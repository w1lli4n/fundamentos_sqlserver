USE [balta];

GO

CREATE TABLE [career_item]
(
    [course_id] UNIQUEIDENTIFIER NOT NULL,
    [career_id] UNIQUEIDENTIFIER NOT NULL,
    [title] NVARCHAR(256) NOT NULL,
    [order] TINYINT NOT NULL,
    [description] TEXT NOT NULL,
    CONSTRAINT [pk__career_item] PRIMARY KEY([course_id], [career_id]),
    CONSTRAINT [fk__career_item__course__course_id] FOREIGN KEY([course_id]) REFERENCES [course]([id]),
    CONSTRAINT [fk__career_item__career__career_id] FOREIGN KEY([career_id]) REFERENCES [career]([id])
);

GO