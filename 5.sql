/*
  --Creazione di una tabella di esempio chiamata 'people'
CREATE TABLE people (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birthdate DATE
);


--Inserimento di dati di esempio nella tabella 'people'
INSERT INTO people (first_name, last_name, birthdate)
VALUES
    ('John', 'Doe', '1990-05-15'),
    ('Jane', 'Smith', '1985-08-20'),
    ('Alice', 'Johnson', '1992-03-10');

   */

/*CONCAT(COLUMN1, COLUMN2) AS ALIAS_NAME: Questa funzione combina il contenuto di COLUMN1 e COLUMN2  
 in una singola stringa e la assegna a un alias con il nome ALIAS_NAME*/
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM people;


/*LOWER(COLUMN): Questa funzione trasforma il contenuto di COLUMN in lettere minuscole*/
SELECT LOWER(first_name) AS lower_first_name
FROM people;

/*UPPER(COLUMN): Questa funzione trasforma il contenuto di COLUMN in lettere maiuscole*/
SELECT UPPER(last_name) AS upper_last_name
FROM people;

/*TRIM(COLUMN): Questa funzione rimuove gli spazi vuoti o i caratteri di spaziatura iniziali e finali dal contenuto di COLUMN*/
SELECT TRIM(BOTH ' ' FROM first_name) AS trimmed_first_name
FROM people;

/*LENGTH(COLUMN): Questa funzione restituisce la lunghezza del contenuto di COLUMN*/
SELECT LENGTH(last_name) AS last_name_length
FROM people;

/*SUBSTRING(COLUMN, START, LENGTH): Questa funzione restituisce una sottostringa di COLUMN in base 
  all'indice di inizio (START) e alla lunghezza specificata (LENGTH)*/
SELECT SUBSTRING(first_name, 3, 3) AS substring_first_name
FROM people;

/*ROUND(COLUMN, DECIMAL_PLACES): Questa funzione arrotonda il valore numerico in COLUMN al numero
 specificato di decimali (DECIMAL_PLACES)*/
SELECT ROUND(birthdate, 2) AS rounded_age
FROM people;

/*DATE_ADD(COLUMN, INTERVAL EXPRESSION UNIT): Questa funzione aggiunge un intervallo di tempo specificato 
 (definito da EXPRESSION e UNIT) al valore di data o ora in COLUMN*/
SELECT DATE_ADD(birthdate, INTERVAL 1 MONTH) AS new_birthdate
FROM people;

/*DATE_SUB(COLUMN, INTERVAL EXPRESSION UNIT): Questa funzione sottrae un intervallo di tempo specificato 
 (definito da EXPRESSION e UNIT) dal valore di data o ora in COLUMN*/
SELECT DATE_SUB(birthdate, INTERVAL 7 DAY) AS new_birthdate
FROM people;

/*FORMAT(COLUMN, FORMAT_STRING): Questa funzione formatta il contenuto di COLUMN secondo
il formato specificato in FORMAT_STRING*/
SELECT FORMAT(birthdate, 'dd/MM/yyyy') AS formatted_birthdate
FROM people;

-- Calcolare la data di compleanno per ogni persona aggiungendo 7 giorni e 2 mesi
SELECT
    first_name,
    last_name,
    DATE_ADD(DATE_ADD(birthdate, INTERVAL 7 DAY), INTERVAL 2 MONTH) AS BIRTHDAY_DATE
FROM people;







