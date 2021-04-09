<ncl id="myNCLDocID" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		<regionBase id="regionBase">
			<region height="100.00%" id="regiaoTV" left="0.00%" top="0.00%" width="100.00%" zIndex="1">
			</region>
			<region height="50.00%" id="regiaoPagina" left="25.00%" top="25.00%" width="50.00%" zIndex="2">
			</region>
			<region height="25.00%" id="regiaoTopoDireito" left="75.00%" top="0.00%" width="25.00%" zIndex="2">
			</region>
		</regionBase>
		<descriptorBase id="descriptoprBase">
			<descriptor explicitDur="20s" id="dVideo1" region="regiaoTV">
			</descriptor>
			<descriptor explicitDur="20s" id="dIteratVermelho" region="regiaoTopoDireito">
			</descriptor>
			<descriptor explicitDur="200s" id="dPagina1" region="regiaoPagina">
			</descriptor>
			<descriptor explicitDur="200s" id="dPagina2" region="regiaoPagina">
			</descriptor>
			<descriptor explicitDur="200s" id="dPagina3" region="regiaoPagina">
			</descriptor>
		</descriptorBase>
		<connectorBase id="connectorBase1">
			<causalConnector id="onEndStart">
				<simpleCondition role="onEnd">
				</simpleCondition>
				<simpleAction role="start">
				</simpleAction>
			</causalConnector>
			<causalConnector id="onBeginStart">
				<simpleCondition role="onBegin">
				</simpleCondition>
				<simpleAction role="start">
				</simpleAction>
			</causalConnector>
			<causalConnector id="onKeySelectionShowStop">
				<connectorParam name="keycode">
				</connectorParam>
				<compoundAction operator="par">
					<simpleAction max="unbounded" qualifier="par" role="stop">
					</simpleAction>
					<simpleAction max="unbounded" qualifier="par" role="start">
					</simpleAction>
				</compoundAction>
				<simpleCondition key="$keycode" role="onSelection">
				</simpleCondition>
			</causalConnector>
		</connectorBase>
	</head>
	<body id="myBodyID">
		<media descriptor="dVideo1" id="video1" src="video1.mpg" type="video/mpeg">
		</media>
		<media descriptor="dIteratVermelho" id="iteratVermelho" src="interat.gif" type="image/gif">
		</media>
		<media descriptor="dPagina1" id="pagina1" src="Pagina1.gif" type="image/gif">
		</media>
		<media descriptor="dPagina2" id="pagina2" src="Pagina2.gif" type="image/gif">
		</media>
		<media descriptor="dPagina3" id="pagina3" src="Pagina3.gif" type="image/gif">
		</media>
		<port component="iteratVermelho" id="port1">
		</port>
		<link id="linkBegin" xconnector="onBeginStart">
			<bind component="iteratVermelho" role="onBegin">
			</bind>
			<bind component="video1" role="start">
			</bind>
		</link>
		<link id="linkBeginToPagina1" xconnector="onKeySelectionShowStop">
			<bind component="iteratVermelho" role="onSelection">
				<bindParam name="keycode" value="RED">
				</bindParam>
			</bind>
			<bind component="iteratVermelho" role="stop">
			</bind>
			<bind component="pagina1" role="start">
			</bind>
		</link>
		<link id="linkPagina1ToBegin" xconnector="onKeySelectionShowStop">
			<bind component="pagina1" role="onSelection">
				<bindParam name="keycode" value="BLUE">
				</bindParam>
			</bind>
			<bind component="iteratVermelho" role="start">
			</bind>
			<bind component="pagina1" role="stop">
			</bind>
		</link>
		<link id="linkPagina1ToPagina2" xconnector="onKeySelectionShowStop">
			<bind component="pagina1" role="onSelection">
				<bindParam name="keycode" value="GREEN">
				</bindParam>
			</bind>
			<bind component="pagina2" role="start">
			</bind>
			<bind component="pagina1" role="stop">
			</bind>
		</link>
		<link id="linkPagina2ToPagina1" xconnector="onKeySelectionShowStop">
			<bind component="pagina2" role="onSelection">
				<bindParam name="keycode" value="YELLOW">
				</bindParam>
			</bind>
			<bind component="pagina1" role="start">
			</bind>
			<bind component="pagina2" role="stop">
			</bind>
		</link>
		<link id="linkPagina2ToPagina3" xconnector="onKeySelectionShowStop">
			<bind component="pagina2" role="onSelection">
				<bindParam name="keycode" value="GREEN">
				</bindParam>
			</bind>
			<bind component="pagina3" role="start">
			</bind>
			<bind component="pagina2" role="stop">
			</bind>
		</link>
		<link id="linkPagina2ToBegin" xconnector="onKeySelectionShowStop">
			<bind component="pagina2" role="onSelection">
				<bindParam name="keycode" value="BLUE">
				</bindParam>
			</bind>
			<bind component="iteratVermelho" role="start">
			</bind>
			<bind component="pagina2" role="stop">
			</bind>
		</link>
		<link id="linkPagina3ToBegin" xconnector="onKeySelectionShowStop">
			<bind component="pagina3" role="onSelection">
				<bindParam name="keycode" value="BLUE">
				</bindParam>
			</bind>
			<bind component="iteratVermelho" role="start">
			</bind>
			<bind component="pagina3" role="stop">
			</bind>
		</link>
		<link id="linkPagina2ToPagina2" xconnector="onKeySelectionShowStop">
			<bind component="pagina3" role="onSelection">
				<bindParam name="keycode" value="YELLOW">
				</bindParam>
			</bind>
			<bind component="pagina2" role="start">
			</bind>
			<bind component="pagina3" role="stop">
			</bind>
		</link>
		<link id="loopVideo" xconnector="onEndStart">
			<bind component="video1" role="start">
			</bind>
			<bind component="video1" role="onEnd">
			</bind>
		</link>
	</body>
</ncl>
