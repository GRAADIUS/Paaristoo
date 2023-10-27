CREATE TABLE AuditLog (
    Log_ID int PRIMARY KEY IDENTITY(1,1),
    User_ID int,
    Table_Name varchar(50),
    Action varchar(10),
    Timestamp datetime
);

CREATE TRIGGER Audit_Ajakava
ON Ajakava
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @TableName AS varchar(50) = 'Ajakava';
    DECLARE @Action AS varchar(10);

    IF EXISTS (SELECT * FROM INSERTED)
    BEGIN
        SET @Action = 'INSERT';
    END
    ELSE IF EXISTS (SELECT * FROM DELETED)
    BEGIN
        SET @Action = 'DELETE';
    END
    ELSE
    BEGIN
        SET @Action = 'UPDATE';
    END

    INSERT INTO AuditLog (User_ID, Table_Name, Action, Timestamp)
    VALUES (USER_ID(), @TableName, @Action, GETDATE());
END;
