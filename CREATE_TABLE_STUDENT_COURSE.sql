USE [balta];

GO

CREATE TABLE [student_course]
(
    [student_id] UNIQUEIDENTIFIER NOT NULL,
    [course_id] UNIQUEIDENTIFIER NOT NULL,
    [progress] TINYINT NOT NULL,
    [favorite] BIT NOT NULL,
    [startdate] DATETIME NOT NULL,
    [last_update] DATETIME NOT NULL,
    CONSTRAINT [pk_student_course] PRIMARY KEY([student_id], [course_id]),
    CONSTRAINT [fk__student_course__course__course_id] FOREIGN KEY([course_id]) REFERENCES [course]([id]),
    CONSTRAINT [fk__student_course__student__student_id] FOREIGN KEY([student_id]) REFERENCES [student]([id])
);

GO