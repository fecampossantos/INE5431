<ncl id="myNCLDocID">
	<head>
		<regionBase id="regionBase1">
			<region height="100.00%" id="regiaoFundo" left="0.00%" top="0.00%" width="100.00%" zIndex="1">
				<region height="60.00%" id="regiaoR1" left="2.00%" top="10.00%" width="46.00%" zIndex="2">
				</region>
				<region height="60.00%" id="regiaoR2" left="52.00%" top="10.00%" width="46.00%" zIndex="2">
				</region>
				<region height="24.00%" id="regiaoR1L" left="2.00%" top="74.00%" width="46.00%" zIndex="2">
				</region>
				<region height="24.00%" id="regiaoR2L" left="52.00%" top="74.00%" width="46.00%" zIndex="2">
				</region>
			</region>
		</regionBase>
		<descriptorBase id="descriptorBase1">
			<descriptor explicitDur="5s" id="dimg2r2" region="regiaoR2">
				<descriptorParam name="fit" value="fill">
				</descriptorParam>
			</descriptor>
			<descriptor explicitDur="5s" id="dvid1r1" region="regiaoR1">
				<descriptorParam name="fit" value="fill">
				</descriptorParam>
			</descriptor>
			<descriptor explicitDur="5s" id="dvid2r1" region="regiaoR1">
				<descriptorParam name="fit" value="fill">
				</descriptorParam>
			</descriptor>
			<descriptor explicitDur="5s" id="dimg1r1" region="regiaoR1">
				<descriptorParam name="fit" value="fill">
				</descriptorParam>
			</descriptor>
			<descriptor explicitDur="10s" id="daudio1">
			</descriptor>
			<descriptor explicitDur="10s" id="daudio2">
			</descriptor>
			<descriptor explicitDur="10s" id="dleg2RL2" region="regiaoR2L">
				<descriptorParam name="fontColor" value="white">
				</descriptorParam>
			</descriptor>
			<descriptor explicitDur="10s" id="dleg1RL1" region="regiaoR1L">
				<descriptorParam name="fontColor" value="white">
				</descriptorParam>
			</descriptor>
		</descriptorBase>
		<connectorBase id="connectorBase1">
			<causalConnector id="onBeginStart">
				<simpleCondition max="unbounded" role="onBegin">
				</simpleCondition>
				<simpleAction max="unbounded" role="start">
				</simpleAction>
			</causalConnector>
			<causalConnector id="onEndStart">
				<simpleAction max="unbounded" role="start">
				</simpleAction>
				<simpleCondition max="unbounded" role="onEnd">
				</simpleCondition>
			</causalConnector>
		</connectorBase>
	</head>
	<body id="myBodyID">
		<media descriptor="dimg1r1" id="imagem1" src="imagem1.jpg" type="image/jpeg">
		</media>
		<media descriptor="dimg2r2" id="imagem2" src="imagem2.gif" type="image/gif">
		</media>
		<media descriptor="dvid1r1" id="video1" src="video1.mpg" type="video/mpeg">
		</media>
		<media descriptor="dvid2r1" id="video2" src="video2.mpg" type="video/mpeg">
		</media>
		<media descriptor="dleg1RL1" id="legenda1" src="legenda1.txt" type="text/plain">
		</media>
		<media descriptor="dleg2RL2" id="legenda2" src="legenda2.txt" type="text/plain">
		</media>
		<media descriptor="daudio1" id="audio1" src="audio1.mp3" type="audio/mp3">
		</media>
		<media descriptor="daudio2" id="audio2" src="audio2.mp3" type="audio/mp3">
		</media>
		<port component="video1" id="port1">
		</port>
		<link id="link1" xconnector="onBeginStart">
			<bind component="video1" role="onBegin">
			</bind>
			<bind component="audio1" role="start">
			</bind>
			<bind component="legenda1" role="start">
			</bind>
		</link>
		<link id="link3" xconnector="onEndStart">
			<bind component="video1" role="onEnd">
			</bind>
			<bind component="imagem1" role="start">
			</bind>
		</link>
		<link id="link2" xconnector="onEndStart">
			<bind component="imagem1" role="onEnd">
			</bind>
			<bind component="imagem2" role="start">
			</bind>
			<bind component="audio2" role="start">
			</bind>
			<bind component="legenda2" role="start">
			</bind>
		</link>
		<link id="link4" xconnector="onEndStart">
			<bind component="imagem2" role="onEnd">
			</bind>
			<bind component="video2" role="start">
			</bind>
		</link>
	</body>
</ncl>
