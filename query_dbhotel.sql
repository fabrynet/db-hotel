-- GOAL: produrre le query per rispondere alle seguenti interrogazioni
--     • Seleziona tutti gli ospiti che sono stati identificati con la carta di identità
SELECT *
FROM ospiti
WHERE document_type LIKE 'CI';

--     • Seleziona tutti gli ospiti che sono nati dopo il 1988
SELECT *
FROM ospiti
WHERE YEAR(date_of_birth) > 1988;

--     • Seleziona tutti gli ospiti che hanno più di 20 anni (al momento dell'esecuzione della query)
SELECT *
FROM ospiti
WHERE YEAR(now()) - YEAR(date_of_birth) > 20;

--     • Seleziona tutti gli ospiti il cui nome inizia con la D
SELECT *
FROM ospiti
WHERE name LIKE 'd%';

--     • Calcola il totale degli ordini accepted
SELECT SUM(price) AS 'sum_price'
FROM pagamenti
WHERE status LIKE 'accepted';

--     • Qual è il prezzo massimo pagato?
SELECT MAX(price)
FROM pagamenti;

--     • Seleziona gli ospiti riconosciuti con patente e nati nel 1975
SELECT *
FROM ospiti
WHERE document_type LIKE 'Driver%'
  AND YEAR(date_of_birth) = 1975;

--     • Quanti posti letto ha l'hotel in totale?
SELECT SUM(beds) AS posti_letto_totali
FROM stanze;

-- NOTE: e' sufficiente caricare un file di testo
