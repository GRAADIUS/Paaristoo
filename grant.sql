GRANT SELECT ON Ravim TO meditsiiniõde;
GRANT SELECT, UPDATE ON Patsient TO meditsiiniõde;
GRANT SELECT, UPDATE ON Ravi TO meditsiiniõde;
GRANT SELECT ON terapeudi_konsultatsioon TO meditsiiniõde;
GRANT SELECT ON Psühhoteraapia_seanss TO meditsiiniõde;

GRANT SELECT, UPDATE, INSERT ON Ravim TO Arsti;
GRANT SELECT, UPDATE ON Patsient TO Arsti;
GRANT SELECT, UPDATE, INSERT ON Ravi TO Arsti;
GRANT SELECT, UPDATE, INSERT ON terapeudi_konsultatsioon TO Arsti;
GRANT SELECT, UPDATE, INSERT ON Psühhoteraapia_seanss TO Arsti;
GRANT SELECT, UPDATE ON Ajakava TO Arsti;

GRANT SELECT ON Osakonna TO Haiglajuh;
GRANT SELECT, UPDATE, INSERT ON Ravim TO Haiglajuh;
GRANT SELECT, UPDATE, INSERT ON Ravi TO Haiglajuh;
GRANT SELECT, UPDATE, INSERT ON terapeudi_konsultatsioon TO Haiglajuh;
GRANT SELECT, UPDATE, INSERT ON Psühhoteraapia_seanss TO Haiglajuh;
GRANT SELECT, UPDATE, INSERT ON Töötajad TO Haiglajuh;
GRANT SELECT, UPDATE, INSERT ON Ajakava TO Haiglajuh;
GRANT SELECT, UPDATE, INSERT ON Patsient TO Haiglajuh;
GRANT SELECT ON Tööhõive TO Haiglajuh;

GRANT SELECT, UPDATE, INSERT, DELETE, GRANT, CREATE, DROP ON Osakonna TO AB_haldaja;
GRANT SELECT, UPDATE, INSERT, DELETE, GRANT, CREATE, DROP ON Ravim TO AB_haldaja;
GRANT SELECT, UPDATE, INSERT, DELETE, GRANT, CREATE, DROP ON Ravi TO AB_haldaja;
GRANT SELECT, UPDATE, INSERT, DELETE, GRANT, CREATE, DROP ON terapeudi_konsultatsioon TO AB_haldaja;
GRANT SELECT, UPDATE, INSERT, DELETE, GRANT, CREATE, DROP ON Psühhoteraapia_seanss TO AB_haldaja;
GRANT SELECT, UPDATE, INSERT, DELETE, GRANT, CREATE, DROP ON Töötajad TO AB_haldaja;
GRANT SELECT, UPDATE, INSERT, DELETE, GRANT, CREATE, DROP ON Ajakava TO AB_haldaja;
GRANT SELECT, UPDATE, INSERT, DELETE, GRANT, CREATE, DROP ON Patsient TO AB_haldaja;
GRANT SELECT, UPDATE, INSERT, DELETE, GRANT, CREATE, DROP ON Tööhõive TO AB_haldaja;
