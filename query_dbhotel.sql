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

-- GROUP BY
--     • Conta gli ospiti raggruppandoli per anno di nascita
SELECT YEAR(date_of_birth) AS 'anno_di_nascita', COUNT(*) AS 'numero_ospiti'
FROM ospiti
GROUP BY YEAR(date_of_birth);

--     • Somma i prezzi dei pagamenti raggruppandoli per status
SELECT status, SUM(price) AS 'somma_pagamenti'
FROM pagamenti
GROUP BY status;

--     • Conta quante volte è stata prenotata ogni stanza
SELECT stanza_id, COUNT(*) AS 'numero_prenotazioni'
FROM prenotazioni
GROUP BY stanza_id;

--     • Fai una analisi per vedere se ci sono ore in cui le prenotazioni sono più frequenti
SELECT HOUR(created_at) AS 'ora_prenotazione', COUNT(created_at) AS 'numero_prenotazioni'
FROM prenotazioni
GROUP BY HOUR(created_at)
ORDER BY COUNT(created_at) DESC;

-- JOIN
--     • Come si chiamano gli ospiti che hanno fatto più di due prenotazioni?


--     • Stampare tutti gli ospiti per ogni prenotazione
--     • Stampare Nome, Cognome, Prezzo e Pagante per tutte le prenotazioni fatte a Maggio 2018
--     • Fai la somma di tutti i prezzi delle prenotazioni per le stanze del primo piano
--     • Prendi i dati di fatturazione per la prenotazione con id=7
--     • Le stanze sono state tutte prenotate almeno una volta? (Visualizzare le stanze non ancora prenotate)

-- NOTE: e' sufficiente caricare un file di testo
