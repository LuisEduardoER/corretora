function SoNumero(nro)
{
 var valid    = "0123456789";
 var numerook = "";
 var temp;

  for (var i=0; i< nro.length; i++) {
    temp = nro.substr(i, 1);
    if (valid.indexOf(temp) != "-1") 
      numerook = numerook + temp;
   } 
 return(numerook);
}


function DigitaLetra(obj)
{
 var valid    = " abcdefghijklmnopqrstuvwxyzçãõéíABCDEÉFGHIÍJKLMNOPQRSTUVWXYZÇÃÕ";
 var numerook = "";
 var temp;

  for (var i=0; i< obj.value.length; i++) {
    temp = obj.value.substr(i, 1);
    if (valid.indexOf(temp) != "-1") 
      numerook = numerook + temp;
   } 
 obj.value = numerook;
}


function DigitaNumero(obj)
{
 var valid    = "1234567890";
 var numerook = "";
 var temp;

  for (var i=0; i< obj.value.length; i++) {
    temp = obj.value.substr(i, 1);
    if (valid.indexOf(temp) != "-1") 
      numerook = numerook + temp;
   } 
 obj.value = numerook;
}


function TamanhoMax(campo, TamanhoMaximo)
{
	if (campo.value.length > TamanhoMaximo)
	{
	  campo.value = campo.value.substring(0,TamanhoMaximo);
    }
	
}

function novaJanela(pagina, nome, altura, largura, scroll) {
var winl = (screen.width - largura) / 2;
var wint = (screen.height - altura) / 2;
	winprops = 'height='+altura+',width='+largura+',top='+wint+',left='+winl+',scrollbars='+scroll+',resizable=0,status=0'
	win = window.open(pagina, nome, winprops)
	if (parseInt(navigator.appVersion) >= 4) { 
		win.window.focus();
	}
}