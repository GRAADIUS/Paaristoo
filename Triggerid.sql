CREATE TRIGGER Seansi_kirjeldus_insert
ON Psühhoteraapia_seanss
AFTER INSERT
AS
BEGIN
    UPDATE Psühhoteraapia_seanss
    SET Seansi_kuupaev = GETDATE()
    WHERE Seansi_ID IN (SELECT Seansi_ID FROM inserted);
END;


CREATE TRIGGER CheckMedicationCompatibility
ON Ravi
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @Patsiendi_ID int;
    DECLARE @Meditsiini_ID int;

    SELECT @Patsiendi_ID = Patsiendi, @Meditsiini_ID = Arsti
    FROM inserted;

    IF NOT EXISTS (
        SELECT 1
        FROM Meditsiini
        WHERE Meditsiini_ID = @Meditsiini_ID
        AND Eesmärk = (
            SELECT Diagnoos
            FROM Patsient
            WHERE Patsiendi_ID = @Patsiendi_ID
        )
    )
    BEGIN
        ROLLBACK;
        print('Выбранный медицинский препарат не соответствует диагнозу пациента!');
    END
END;
