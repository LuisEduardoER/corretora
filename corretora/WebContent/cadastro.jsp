<html>

<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252">
<title>Nova pagina 1</title>
<link rel="stylesheet" href="css/estilo.css" type="text/css">
</head>

<body bgcolor="FFFFFF">
<div align="center">
<form action="/corretora/cadastrarpessoa" method="post">
<table width="90%" border="0"
	style="border-style: solid; border-collapse: collapse" cellpadding="0">
	<tr>
		<td>
		<fieldset class="t�tulos"><legend>INFORMA��ES
		PESSOAIS</legend>



		<table width="99%" border="0"
			style="border-style: solid; border-collapse: collapse"
			cellpadding="0">
			<tr>
				<td width="140" class="campoFormulario">Nome:</td>
				<td width="85%" class="campoFormulario"><input type="text"
					name="nome" size="50" class="campoObrigatorio"></td>
			</tr>
			<tr>
				<td class="campoFormulario">Sobrenome:</td>
				<td width="85%" class="campoFormulario"><input type="text"
					name="sobrenome" size="50" class="campoObrigatorio"></td>
			</tr>
			<tr>
				<td class="campoFormulario">E-mail:</td>
				<td width="85%" class="campoFormulario"><input type="text"
					name="email" size="50" class="campoObrigatorio"></td>
			</tr>
			<tr>
				<td class="campoFormulario">Telefone:</td>
				<td width="85%" class="campoFormulario"><input type="text"
					name="ddd" size="4" maxlength="3" class="campoObrigatorio"><input
					type="text" class="campoObrigatorio" maxlength="9" name="telefone"
					size="15"></td>
			</tr>
			<tr>
				<td class="campoFormulario">Celular:</td>
				<td width="85%" class="campoFormulario"><input type="text"
					name="dddcel" size="4" maxlength="3" class="campoObrigatorio"><input
					type="text" name="celular" size="15" maxlength="9"
					class="campoObrigatorio"></td>
			</tr>
		</table>
		</fieldset>

		<fieldset class="t�tulos"><legend>INFORMA��ES DE
		ENDERE�O </legend>



		<table width="99%" border="0"
			style="border-style: solid; border-collapse: collapse"
			cellpadding="0">
			<tr>
				<td width="141" class="campoFormulario">Logradouro:</td>
				<td width="85%" class="campoFormulario"><input type="text"
					name="logradouro" size="50" maxlength="100"
					class="campoObrigatorio"></td>
			</tr>
			<tr>
				<td class="campoFormulario">Complemento:</td>
				<td width="85%" class="campoFormulario"><input type="text"
					name="complemento" size="50" maxlength="100"
					class="campoObrigatorio"></td>
			</tr>
			<tr>
				<td class="campoFormulario">N�mero:</td>
				<td width="85%" class="campoFormulario"><input type="text"
					name="numero" size="15" maxlength="20" class="campoObrigatorio"></td>
			</tr>
			<tr>
				<td class="campoFormulario">Bairro:</td>
				<td width="85%" class="campoFormulario"><input type="text"
					maxlength="30" name="bairro" size="30" class="campoObrigatorio"></td>
			</tr>
			<tr>
				<td class="campoFormulario">Cidade:</td>
				<td width="85%" class="campoFormulario"><input type="text"
					name="cidade" size="40" maxlength="40" class="campoObrigatorio"></td>
			</tr>
			<tr>
				<td class="campoFormulario">Estado:</td>
				<td width="85%" class="campoFormulario"><select name="estado"
					class="campoObrigatorio">
					<option value="Amazonas">Amazonas</option>
					<option value="S�o Paulo">S�o Paulo</option>
					<option value="Rio de Janeiro">Rio de Janeiro</option>
				</select></td>
			</tr>
			<tr>
				<td class="campoFormulario">CEP:</td>
				<td width="85%" class="campoFormulario"><input type="text"
					name="cep"   size="15" maxlength="10" class="campoObrigatorio"></td>
			</tr>			
		</table>
		</fieldset>
		<fieldset class="t�tulos"><legend>INFORMA��ES DE
		LOGIN</legend>



		<table width="99%" border="0"
			style="border-style: solid; border-collapse: collapse"
			cellpadding="0">
			<tr>
				<td width="142" class="campoFormulario">Login:</td>
				<td width="85%" class="campoFormulario"><input type="text"
					name="login" size="15" maxlength="15" class="campoObrigatorio"></td>
			</tr>
			<tr>
				<td class="campoFormulario">Senha:</td>
				<td width="85%" class="campoFormulario"><input type="text"
					name="senha" size="10" class="campoObrigatorio"></td>
			</tr>
			<tr>
				<td class="campoFormulario" nowrap>Repetir Senha:</td>
				<td width="85%" class="campoFormulario"><input type="text"
					name="repetisenha" size="10" class="campoObrigatorio"></td>
			</tr>
		</table>




		</fieldset>


	<div align="center">
		<table width="99%" border="0"
			style="border-style: solid; border-collapse: collapse"
			cellpadding="0">
			<tr>
				<td align="center">
				<button type="submit" class="button"><img
					src="images/botao_cadastrar.jpg"></button>
				<button type="button" class="button"><img
					src="images/botao_voltar.jpg"></button>
				</td>
			</tr>
		</table>
	</div>
		</td>
	</tr>
</table>
</form>
</div>

</body>

</html>