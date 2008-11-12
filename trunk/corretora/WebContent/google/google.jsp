<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<title>Google Maps</title>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="../css/print.css" type="text/css" media="print">

<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=ABQIAAAAfemRxDBQs6xMED62nblSWRQYwmEMwlJGqmetnZCTk9br6F9pohRLet0IB3smP7DM-MBFsaYxvxTsyQ"
type="text/javascript"></script>
<script type="text/javascript" src="google.js"></script>
<script type="text/javascript" src="google1.js"></script>

<script type="text/javascript">
/*

<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=ABQIAAAAfemRxDBQs6xMED62nblSWRT2yXp_ZAY8_ufC3CFXhHIE1NvwkxSOL-lUqo1mc3evD8kx2jmLZUBE9A"

*/
  function init() {
  	loadAtStart(-3.107863,-60.026464, 15);
    addAddress('-3.100909, -60.00925');


}

function toggle(divId) {
  var divObj = document.getElementById(divId);
  if (divObj.innerHTML == "") {
    divObj.innerHTML = document.getElementById(divId + "_hidden").innerHTML;
    document.getElementById(divId + "_hidden").innerHTML = "";
  } else {
    document.getElementById(divId + "_hidden").innerHTML = divObj.innerHTML;
    divObj.innerHTML = "";
  }
}

</script>  
</head>
<body onload='init()' onunload='GUnload()'>
<table class="round">
  <tr class="roundborder">
    <td class="ul"></td>
    <td class="u"></td>
    <td class="ur"></td>
  </tr>
  <tr>

    <td class="l"></td>
    <td class="m">
      <h2>Google Maps - Resolvendo o Caminho</h2>
    <div id="map" class="myMap"></div><br><br>
    <div id="buttonArea">
    <div align="center"><form name="address" onSubmit="clickedAddAddress(); return false;">
    Informe um EndereÃ§o: <input name="addressStr" type="text">
    <input type="button" value="Adicionar" onClick="clickedAddAddress()">

    </form> </div>
    <div id="bulkLoader"></div>
  <form name="travelOpts">
  <table class="optionsTable">
    <tr>
    <td><input id="walking" type="checkbox"> Andando</input><br></td>

    <td><input id="avoidHighways" type="checkbox"> Evitar Rodovias</input><br></td>
    </tr>
  </table>
  </form>
  <table class="buttonTable">
    <tr>
    <td><input id="button1" class="calcButton" type="button" value="Percurso Completo" onClick="directions(0, document.forms['travelOpts'].walking.checked, document.forms['travelOpts'].avoidHighways.checked)"></td>
    <td><input id="button2" class="calcButton" type="button" value="Percurso A-Z" onClick="directions(1, document.forms['travelOpts'].walking.checked, document.forms['travelOpts'].avoidHighways.checked)"></td>

    <td><input id='button3' class="calcButton" type='button' value='Start Over Again' onClick='startOver()'></td>
    </tr>
    </table>
</td>
 
    <td class="r"></td>
  </tr>
  <tr class="roundborder">
    <td class="ll"></td>

    <td class="lower"></td>
    <td class="lr"></td>
  </tr>
</table>
<p>&nbsp;</p>
<table class="round">
  <tr class="roundborder">
    <td class="ul"></td>
    <td class="u"></td>
    <td class="ur"></td>

  </tr>
  <tr>
    <td class="l"></td>
    <td class="m">
      <h2>Informações do Percurso:</h2>
    <!--<div id="message"></div>-->
    <div id="path" class="pathdata"></div>
    <div id="exportData"></div>

    <div id="my_textual_div"></div><br>
<!--<a href="http://addto.tomtom.com/api/home/v2/content?action=install&apikey=4db7cb3c-146e-4cd5-ae48-8998a464a4d9&uri=http%3A//www.gebweb.net/optimap/tomtom/gebweb-optimap-dusseldorf.xml&source=http%3A//www.tomtom.com"><img src="http://addto.tomtom.com/api/images/addtotomtom-button.gif" alt="Add-To-TomTom" border="0"/></a>-->
    </td>
    <td class="r"></td>
  </tr>
  <tr class="roundborder">
    <td class="ll"></td>
    <td class="lower"></td>
    <td class="lr"></td>

  </tr>
</table>
<p>&nbsp;</p>
<div id="instructionBox">
<table class="round">
  <tr class="roundborder">
    <td class="ul"></td>
    <td class="u"></td>
    <td class="ur"></td>
  </tr>
  <tr>

    <td class="l"></td>
    <td class="m">
      <h2>Instruções:</h2>
    </td>

    <td class="r"></td>
  </tr>
  <tr class="roundborder">
    <td class="ll"></td>
    <td class="lower"></td>
    <td class="lr"></td>
  </tr>
</table>
</div>
<p>
<br><br>
    </p>
    <div id="bulkLoader_hidden" style="visibility: hidden;">

    <form name="listOfLocations" onSubmit="clickedAddList(); return false;">
    <textarea name="inputList" rows="10" cols="70" value=""></textarea><br>
    <input type="button" value="Add list of locations" onClick="clickedAddList()">
    </form></div>
    <div id="exportData_hidden" style="visibility: hidden;"></div>

</body>
</html>