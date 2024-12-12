<html>
    <head>
        <title>Meu primeiro PHP</title>
    </head>
</html>
<body>

<?php
//var_dump($_GET);

if (empty($_GET)){
    echo "erro";
    header("Location:login.html");
}
else if(empty($_GET["nome"]) || empty($_GET["sobrenome"]) || empty($_GET["idade"])){
    echo"Falta informação";
}
else{
$nome =  $_GET["nome"]; 
$sobrenome = $_GET["sobrenome"];
$idade = $_GET["idade"];
$ano = date("Y") - $idade;

echo"<center>Olá $nome $sobrenome $idade</center>";
echo "<center>Você nasceu em $ano</center>";
}
?>
</body>