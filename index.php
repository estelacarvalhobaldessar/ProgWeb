<?php
if(!empty($_GET["erro"])){
  $erro = $_GET["erro"];
}
else{
  $erro = 0;
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="/img/favicon.png">
    <title>Site da Estela</title>
  </head>
  <body>
    <script>
      var erro = <?php echo $erro; ?> 
    </script>
    <header>
      <h1 class="titulo">FAÇA SEU LOGIN</h1>
    </header>
    <main class="fundo">      
      <img src="img/tec.jpg" alt="" class="tec">
      <div id="pergunta">
        <form name="usuario" action="login.php" autocomplete="off"  method="post" >
          <input
            type="email"
            id="email"
            name="email"
            minlength="6"
            maxlength="25"
            placeholder="Informe seu usuário" value="angela@b.com" 
          />
          <input
            type="password"
            id="senha"
            name="senha"
            minlength="3"
            maxlength="8"
            placeholder="Informe sua senha" value="1234"
          />
          <input type="submit" value="OK" onclick="PegaIdade();" />
          
        </form>
      </div>
      <div id="teste">
        <button id="fechar" onclick="fecharmensagem()">X</button>
        <div id="texto"></div>
      </div>
      
      <div>
        <p id="erro-msg"></p>
      </div>
    </main>
    <script src="js/sketch.js"></script>
  </body>
</html>
