# Inserimento
INSERT INTO Cliente (Nome, Cognome, Anni)
VALUES ('Mario', 'Rossi', 30);

# Modifica
UPDATE Cliente 
SET Anni = 25
WHERE Nome = 'Mario' AND Cognome = 'Rossi';

#Elimina
DELETE FROM Cliente
WHERE Nome = 'Mario';
