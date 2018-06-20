SELECT Persoon.Voornaam, Persoon.Achternaam FROM Persoon
INNER JOIN Gezinsleden ON Persoon.ID = Gezinsleden.PersoonID
WHERE Gezinsleden.GezinID IN (
    SELECT Gezinsleden.GezinID FROM Gezinsleden
    INNER JOIN Persoon ON Gezinsleden.PersoonID = Persoon.ID
    WHERE Persoon.ID = '1234'
  )
