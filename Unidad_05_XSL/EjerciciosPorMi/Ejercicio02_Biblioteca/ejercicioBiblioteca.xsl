<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" encoding="iso-8859-1"/>

	<xsl:template match="/biblioteca">
		<html>
			<head>
				<title>Biblioteca</title>
			</head>
			<body>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="libro">
		<ul>
			<li>
				titulo: <xsl:value-of select=" titulo"/>
			</li>
			<li>
				autor: <xsl:value-of select="autor/@fechaNacimiento"/> - <xsl:value-of select="autor"/>
			</li>
			<li>
				fechaPublicacion: <xsl:value-of select=" fechaPublicacion/@año"/>
			</li>
		</ul>
	</xsl:template>
	
	
	
</xsl:stylesheet>