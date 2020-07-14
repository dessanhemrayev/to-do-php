<?php
session_start();

$login = $_SESSION['login'];

$task=$_POST['task'];
if($task==''){
	echo'Введите что-то';
	exit();
}

require 'connectDB.php';
$query=$pdo->prepare("INSERT INTO tasks(task,log_user) VALUES(?,?)");
if($query->execute(array($task,$login))){

header('Location: /check/');}
else
{echo'ошибка при записи';}
?>
