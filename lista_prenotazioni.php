<?php

//Dice a livello dello script che gli errori verranno mostrati
//e che non verranno loggati
ini_set('display_errors', 1);
ini_set('log_errors', 0);

$host = 'localhost';
$db = 'tamponi';
$user = 'root';
$pass = '';

//Stringa di connessione
$dsn = 'mysql:host=' . $host . ';dbname=' . $db;


$pdo = new PDO($dsn, $user, $pass);

//Query per recuperare tutte le prenotazioni
$sql = "SELECT * FROM prenotazioni";

//Invio la query al server MySQL
$stmt = $pdo->query($sql);

//Estraggo le righe di risposta che finiranno come vettori in $result
$result = $stmt->fetchAll();

//Metodo sporco e veloce per visualizzare il risultato
echo "<pre>";
var_dump($result);
echo "</pre>";