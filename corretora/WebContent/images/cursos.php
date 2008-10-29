<?php
setlocale(LC_TIME,pt_BR);
session_name("teste");
session_start();
include "config.php";
include "funcoes/reverterdata.php";
include "verificacao.php";

if ($contagem == 1){

unset($_SESSION['ATUALIZAPAGINA']);
$login = $_SESSION['login'];
$senha = $_SESSION['senha'];

$sql="SELECT * FROM tb_user WHERE usr_login = '$login' and usr_senha = '$senha' ";
$confirmacao = mysql_query($sql);
$linhaUsr = mysql_fetch_array($confirmacao); 
$codigo = $linhaUsr[0];
$registros = array();
$atual = $_GET['reg'];




	$sql="SELECT * FROM tb_informacoes WHERE usr_id = $codigo and inf_categoria = 2 order by inf_dt_ini desc,inf_dt_fim";

	$confirmacao = mysql_query($sql);
	$total = mysql_num_rows($confirmacao);
	$chaveAtual =0;
if ($total !=0){
/**********************/
	while ($dados = mysql_fetch_array($confirmacao)){
		$registros[] = $dados[0];	
	}
/**********************/	


$primeiro = reset($registros);
$ultimo = end($registros);

if (!isset($atual)){
	$atual = reset($registros);
}

foreach ($registros as $chave => $valor){
	if ($atual==$valor){
		$chaveAtual = $chave;
	}
}

$proximo = $registros[$chaveAtual+1];
$anterior = $registros[$chaveAtual-1];

$chaveAtual +=1;

	$sql="SELECT * FROM tb_informacoes WHERE inf_id = $atual and usr_id = $codigo and inf_categoria = 2 order by inf_dt_ini";

	$confirmacao = mysql_query($sql);

	$linha = mysql_fetch_array($confirmacao);
	$aux= explode(" ",$linha[2]);
	$linha[2] = reverterdata($aux[0]);
	$aux= explode("/",$linha[2]);
	$linha[2] = $aux[1].'/'.$aux[2];

	if (trim($linha[5])!=""){
		$aux= explode(" ",$linha[5]);
		$linha[5] = reverterdata($aux[0]);
		$aux= explode("/",$linha[5]);
		$linha[5] =  $aux[1].'/'.$aux[2];
	}



$sql = "SELECT * FROM TB_DOMINIOS WHERE DOM_NOM_CAMPO = 'NIVEL_CURSO' and (usr_id = 0  or usr_id = $codigo)";
$resultadoEST = mysql_query($sql);
while ($linhaEst = mysql_fetch_array($resultadoEST)){
								 if ($linhaEst[2] == $linha[7]){
								 	$linha[7] = $linhaEst[3];
								 }
}
}
?>					
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Language" content="pt-br">
	<title>Gerador de Curriculum Vitae</title>
	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<link href="../css/estilo.CSS" rel="stylesheet" type="text/css">
	<script language="JavaScript" src="../scripts/esconderObjeto.js" type="text/javascript" defer></script>	
	<script language="JavaScript" src="../scripts/scriptcdoc.js" type="text/javascript" defer></script>	
	<meta http-equiv="Content-Language" content="pt-br">
</head>
<body>

<div align="center">
<form name=main action="../endereco_2.php" method="post" >

	<table width="540" border="0" cellpadding="0" cellspacing="0" class="text">
		<tr> 
		  <td colspan="9">
			<fieldset class="campoObrigatorio"><legend><img border="0" src="barraCursos.jpg" alt="Barra de Cursos"></legend>
				<div align="center"> 
					&nbsp;<table width="500" border="0" cellpadding="0" style="border-collapse: collapse">
              <tr> 
                      <td width="21%" valign="top" class="text">Instituição:</td>
                      <td width="78%" class="text">
						<input name="campo1"  readonly type="text" size="60" class="campoReadOnly"tabindex="1" value="<? echo $linha[4];?>"  ></td>
                    </tr>
                    <tr> 
                      <td width="21%" valign="top" class="text">Curso:</td>
                      <td width="78%" class="text">	
						<input type=text  readonly value="<? echo $linha[3];?>" name=campo2   size=60 class="campoReadOnly" tabindex="2"></td>
                    </tr>
                    <tr> 
                      <td width="21%" valign="top" class="text">Carga Horária:</td>
                      <td width="78%" class="text">
						<input type="text"  readonly name="campo3" size="5"  maxlength=10 class="campoReadOnly" tabindex="3" value="<? echo $linha[8];?>"> 
						horas</td>
                    </tr>
                    <tr> 
                      <td width="21%" valign="top" class="text">Data de Início:</td>
                      <td width="78%" class="text">
						<input type="text"  readonly name="campo4" size="10"  maxlength=10 class="campoReadOnly" tabindex="3" value="<? echo $linha[2];?>"> 
						mês/ano</td>
                    </tr>
                    <tr> 
                      <td width="21%" valign="top" class="text">Data de Término:</td>
                      <td width="78%" class="text">
										<input name="campo5" maxlength=10 readonly type="text" size="10" class="campoReadOnly" tabindex="4" value="<? echo $linha[5];?>"  > 
										mês/ano</td>
                    </tr>
                    <tr> 
                      <td width="21%" valign="top" class="text">Nível:</td>
                      <td width="78%" class="text">
										<input name="campo6"  readonly type="text" size="17" class="campoReadOnly"tabindex="4" value="<? echo $linha[7];?>"  ><input name="campo7" type="hidden" size="17" class="campoObrigatorio"tabindex="4" value="<? echo $linha[0];?>"  ></td>
                    </tr>
                    <tr> 
                      <td width="21%" valign="top" class="text">&nbsp;</td>
                      <td width="78%" class="text">
										&nbsp;</td>
                    </tr>
                    </table>

			</fieldset>
            </td>
        </tr>
        <tr>
        	<td align=right colspan="9">
			&nbsp;</td>
        </tr>
        <tr>
        	<td align=right width="45">
			&nbsp;</td>
        	<td align=center width="33"><?
if ($primeiro != $atual){        	
?>
        	<a href="javascript:window.location.href='cursos.php?reg=<? echo $primeiro;?>'">
			<img border="0" src="primeiro.jpg" width="18" height="18"></a>
<?
}else{
?>
			<img border="0" src="primeiro_1.jpg" width="18" height="18">

<?
}			
?>
			</td>
        	<td align=center width="28"><?
if ($anterior != ""){        	
?>
        	<a href="javascript:window.location.href='cursos.php?reg=<? echo $anterior;?>'">
			<img border="0" src="anterior.jpg" width="18" height="18"></a>
<?
}else{
?>
			<img border="0" src="anterior_1.jpg" width="18" height="18">

<?
}			
?></td>
        	<td align=center width="20"><? echo ($chaveAtual);?></td>
        	<td align=center width="10">
			/</td>
        	<td align=center width="21"><? echo $total;?></td>
        	<td align=center width="28">
<?
if ($proximo != ""){        	
?>
        	<a href="javascript:window.location.href='cursos.php?reg=<? echo $proximo;?>'">
			<img border="0" src="proximo.jpg" width="18" height="18"></a>
<?
}else{
?>
        	<img border="0" src="proximo_1.jpg" width="18" height="18">

<?
}			
?>
			</td>
        	<td align=center width="24"><?
if ($ultimo != $atual){        	
?>
        	<a href="javascript:window.location.href='cursos.php?reg=<? echo $ultimo;?>'">
			<img border="0" src="ultimo.jpg" width="18" height="18"></a>
<?
}else{
?>
			<img border="0" src="ultimo_1.jpg" width="18" height="18">

<?
}			
?>        	
        	
			</td>
        	<td align=right width="288">
			<button type="button" name="Novo" class="button" onclick="javascript:envia('cursos_novo.php');"><img border="0" alt="Novo" src="botao_novo.jpg"> </button>
<?
if ($total !=0){
?>
			<button type="button" name="Alterar" class="button" onclick="javascript:envia('cursos_alterar.php');"><img border="0" alt="Alterar" src="botao_alterar.jpg"> </button>
			<button type="button" name="Excluir" class="button" onclick="javascript:envia('cursos_excluir.php');"><img border="0" alt="Excluir" src="botao_excluir.jpg"> </button>
<?
}
?>
        	</td>
        </tr>
        </table>
			
</form>
</div>
<script language="JavaScript" type="text/javascript" src="../scripts/tooltip.js"></script>	 
</body>
</html>
<?
}else{
header ("LOCATION: restrito.php?pagina=$pagina");
}
?>