<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>База данных</title>
    <link rel="stylesheet" type="text/css" href="/check/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
 <style type="text/css">
body{
	background-color: #EFF0F3!important}

.container{
	margin-top:50px;
	width:45%!important;
	background:#41abf6;
}
form {
	background:#14b90b;
	border: 2px solid #007bff;
	border-radius: 10px;
	padding: 20px 10px;
}
#task {
	width:50%;
	float: left;
	margin-right: 15%;
}



ul {
	padding: 35px;
}

.dis{
	float: right;
}

ul li {

	list-style:none;
	padding: 15px;
	margin-bottom: 10px;
	background:#84ff7e;
	border: 1px solid silver;
	border-radius: 15px;
}
ul li:hover {
	background:#e5e5e5;
}
ul li button {
	border:0;
	padding: 5px 15px;
	color: white;
	font-size: 13px;
	background: #db5757;
	position: relative;
    
	right: : 100px;
	border-radius: 5px;
}

ul li button:hover{
	background:#a04141;
}
.btn{
    margin-top:0px;
    margin-bottom:0px;

}


</style>


</head>
<body>

<?php

 include_once '../connectDB.php';
session_start();

$login = $_SESSION['login'];


echo '<div align="right">
<span class="right  title1" >
<span class="log1">
<span class="" aria-hidden="true"></span> &nbsp;&nbsp;&nbsp;&nbsp;
Привет,</span> 
<a href="#" class="fa fa-user-circle">'.$login.'</a>&nbsp;|&nbsp;
<a href="../index.html" class="fa fa-sign-in">
<span class="fa fa-sign-in" aria-hidden="true"></span>
&nbsp;Выйти</button>
</a>
</span>
</div>
';
?>

		<div class="container" style="margin-top:50px;	witdh:25%!important;">
		<h1 class="text-center">Список задач</h1>
		<div>
			<form action="/check/add.php" method="post">
			
		<div>
			<input type="text" name="task" id="task" placeholder="Задача..." class="form-control">
			<button style="margin-left:100px" type="submit" name="sendtask" class="btn btn-warning">Добавить </button>
		</div>
			
		</form>
		</div>
<?php
require 'connectDB.php';
ECHO '<ul style="margin-top:15px;">';
$query=$pdo->prepare('SELECT * FROM `tasks` WHERE `log_user`=?');
$query->execute(array($login));

;
while($row=$query->fetch(PDO::FETCH_OBJ)){

echo'
<div>
<li>

<b>'.++$a.'</b>	
	<b>'.")".'</b>	
	<b class="raz">'.$row->task.'</b>	

<a class="dis" href="/check/delete.php?id='.$row->id.'">
	 <button>Delete</button></a>
	

	
	 
</li>

</div>';

}
ECHO '</ul>';
?>

	</div>

</body>
</html>
