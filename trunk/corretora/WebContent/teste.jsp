<!-- Original script taken from: http://conversationswithmyself.com/googleMapDemo.html -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml">
	<head>
		<style type="text/css">
		<!--
		h1 {
			font-family:sans-serif;
			color:blue;
			text-align: center;
			font-size:120%;
		}

		.tekst {
			font-family:sans-serif;
			color:blue;
			font-size:100%;
		}

		.smalltekst {
			font-family:sans-serif;
			color:black;
			font-size:80%;
		}
		-->	
		</style>
		<style type="text/css">
		v\:* {
			behavior:url(#default#VML);
		}
		</style>
		<script >
			function enviar(){
				
				window.opener.document.formImovel.latitude.value = document.getElementById("frmLat").value;
				window.opener.document.formImovel.longitude.value = document.getElementById("frmLon").value;
				window.close();
			}
		</script>
    	
    	<script src="http://maps.google.com/maps?file=api&v=2&key=ABQIAAAAF4PVqw0p5l92pEmE39k0MRQWxhPw7-SAnMb84NfHs4vQ3HTp4BTb-yeL6fQg7Up9d9idBGy5naXydw" type="text/javascript"></script>
		<title>Google Maps Latitude, Longitude Popup</title>

	</head>
	<body>
		
		<div id="map" style="width: 450px; height: 300px"></div>
		<div id="geo" style="width: 300px;position: absolute;left: 150px; top: 350px" class="tekst">
		
			<b>Coordenadas:</b><br />
	<form action="" name="formBusca">
			<table>
				<tr><td>Lat:</td><td><input type='text' name='lat' id="frmLat"></td></tr>
				<tr><td>Lon:</td><td><input type='text' name='lon' id="frmLon"></td></tr>
			</table>
			<button type="button" name="setLatLon" onclick="enviar();">Selecionar</button><br />
		<br />
        </form>
		
		<br />
        
		 <a href="#" target="_blank" id="multimap"></a><br />
		 <a href="#" id="maplink"></a><br /><br />

	</div>
	
    <script type="text/javascript">
    //<![CDATA[

	var baseLink = "http://www.gorissen.info/Pierre/maps/googleMapLocation.php";
	var multimapBaseLink = "http://www.multimap.com/map/browse.cgi?scale=10000&icon=x";
	var geocoder = new GClientGeocoder();
	var setLat = -3.107863;
	var setLon =-60.026464;   

	// argItems code taken from 
	// http://www.evolt.org/article/Javascript_to_Parse_URLs_in_the_Browser/17/14435/?format=print
	function argItems (theArgName) {
		sArgs = location.search.slice(1).split('&');
    		r = '';
    		for (var i = 0; i < sArgs.length; i++) {
        		if (sArgs[i].slice(0,sArgs[i].indexOf('=')) == theArgName) {
            			r = sArgs[i].slice(sArgs[i].indexOf('=')+1);
            			break;
        		}
    		}
    	return (r.length > 0 ? unescape(r).split(',') : '')
	}
	
	
	function getCoordForAddress(response) {
	
		if (!response || response.Status.code != 200) {
	        alert("Sorry, we were unable to geocode that address\n\n Sorry, dat adres bestaat blijkbaar niet!");
	    } else {
			place = response.Placemark[0];
			setLat = place.Point.coordinates[1];
			setLon = place.Point.coordinates[0];
			setLat = setLat.toFixed(6);
			setLon = setLon.toFixed(6);
			document.getElementById("frmLat").value = setLat;
			document.getElementById("frmLon").value = setLon;
		}
		placeMarker(setLat, setLon)
    }
	
	
	function placeMarker(setLat, setLon) {
	
		var message = "Latitude=" + setLat + " Longitude=" + setLon + " "; 
	
		var messageRoboGEO = setLat + ";" + setLon + ""; 
		
	  
		
		//document.getElementById("maplink").href = baseLink + "?lat=" + setLat + "&lon=" + setLon ;
		//document.getElementById("multimap").href = multimapBaseLink + "&lat=" + setLat + "&lon=" + setLon ;
		document.getElementById("frmLat").value = setLat;
		document.getElementById("frmLon").value = setLon;
	  
		var map = new GMap(document.getElementById("map"));
		
		map.addControl(new GSmallMapControl()); // added
		map.addControl(new GMapTypeControl()); // added
		map.centerAndZoom(new GPoint(setLon, setLat), 4);
		
		var point = new GPoint(setLon, setLat);
		var marker = new GMarker(point);
		map.addOverlay(marker);

		GEvent.addListener(map, 'click', function(overlay, point) {
			if (overlay) {
				map.removeOverlay(overlay);
			} else if (point) {
				map.recenterOrPanToLatLng(point);
				var marker = new GMarker(point);
				map.addOverlay(marker);
				var matchll = /\(([-.\d]*), ([-.\d]*)/.exec( point );
				if ( matchll ) { 
					var lat = parseFloat( matchll[1] );
					var lon = parseFloat( matchll[2] );
					lat = lat.toFixed(6);
					lon = lon.toFixed(6);
					var message = "geotagged geo:lat=" + lat + " geo:lon=" + lon + " "; 
					var messageRoboGEO = lat + ";" + lon + ""; 
				} else { 
					var message = "<b>Error extracting info from</b>:" + point + ""; 
					var messagRoboGEO = message;
				}

				marker.openInfoWindowHtml(message);
		
				document.getElementById("maplink").href = baseLink + "?lat=" + lat + "&lon=" + lon ;
				document.getElementById("multimap").href = multimapBaseLink + "&lat=" + lat + "&lon=" + lon ;
				document.getElementById("frmLat").value = lat;
				document.getElementById("frmLon").value = lon;

			}
		});
	}

	function findAddress() {
		myAddress = document.getElementById("address").value;
		geocoder.getLocations(myAddress, getCoordForAddress);
	
	}


	if (argItems("lat") == '' || argItems("lon") == '') {
		placeMarker(setLat, setLon);
    } else {
		var setLat = parseFloat( argItems("lat") );
		var setLon = parseFloat( argItems("lon") );
		setLat = setLat.toFixed(6);
	    setLon = setLon.toFixed(6);
		placeMarker(setLat, setLon);
    }

    //]]>
    </script>

  </body>
</html>