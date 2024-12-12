<?php
session_start();

if (!$_SESSION["logado"]){
    echo "você não tem acesso a essa página.";
    header("Location: index.php");
    exit;    

}
//var_dump($_GET);
if (empty($_GET["id"])) {
    header("Location: lista-cliente.php");
    exit;  
}
include("connect.php");


// Busca produto para editar
    $sql = "DELETE FROM clientes WHERE id = :id";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':id', $_GET["id"]);

    if($stmt->execute()){
        header("Location: lista-cliente.php");
        exit;
    }
    else {
        echo "não foi possivel excluir";
    }
?>