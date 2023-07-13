// Interrogazioni

SELECT nome, reddito
FROM persone
WHERE anni > 18

SELECT p.nome AS Nome, p.reddito AS reddito
FROM persone AS p
WHERE p.anni > 18 OR anni IS NULL

SELECT *
FROM persone
WHERE nome LIKE 'A_d%'

SELECT DISTINCT padre
FROM persone, paternità
WHERE figlio = nome AND reddito > 20

SELECT S.Nome, S.Cognome, AVG(Esame.Voto) AS Media
FROM Studente AS S
  JOIN Esame ON S.ID = Esame.IDStudente
WHERE S.ID = 'id_studente';

SELECT St.Nome, GROUP_CONCAT(Sq.Nome) AS Squadre
FROM Squadra AS Sq
  JOIN Stadio AS St ON Sq.Stadio = St.Nome
GROUP BY St.Nome
HAVING COUNT(Sq.Codice) >= 2
ORDER BY Squadre ASC/DESC;

SELECT A.Nome, A.Cognome, COUNT(P.Arbitro) AS NumeroPartite
FROM Arbitro AS A
	LEFT JOIN Partita AS P ON A.CF = P.Arbitro
GROUP BY A.CF, A.Nome, A.Cognome;

SELECT MIN(Valore) AS Minimo, MAX(Valore) AS Massimo, SUM(Valore) AS Somma
FROM Tabella;

SELECT Nome, Cognome
FROM Impiegati
UNION / INTERSECT / EXCEPT
SELECT Nome, Cognome
FROM Impiegati;

SELECT Nome, Cognome
FROM Cliente
WHERE EXISTS (
  SELECT 1
  FROM Ordini
  WHERE Ordini.IDCLiente = Cliente.ID
);

SELECT Nome
FROM Cliente
WHERE Nazione = ALL / ANY (SELECT Nazione FROM Cliente WHERE City = 'London');

SELECT Nome
FROM Cliente
WHERE Nazione NOT IN ('USA', 'UK', 'Germany');
