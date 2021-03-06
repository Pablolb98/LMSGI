<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" encoding="iso-8859-1"/>

	<xsl:template match="/navidad">
		<html>
			<head>
				<title>Comida de Navidad</title>
			</head>
			<body>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="almuerzo">
		<ul>
			<li>Primer Plato: <xsl:value-of select="primerPlato"/></li>
			<li>Segundo Plato: <xsl:value-of select="segundoPlato"/></li>
			<li>Postre: <xsl:value-of select="postre"/></li>
			<li>Bebida: <xsl:value-of select="bebida"/></li>
			<xsl:apply-templates select="sobremesa"></xsl:apply-templates>
		</ul>
	</xsl:template>

	<xsl:template match="sobremesa">
		<ul>
			<li>primeraCopa: <xsl:value-of select="primeraCopa"/></li>
			<li>segundaCopa: <xsl:value-of select="segundaCopa"/></li>
			<li>terceraCopa: <xsl:value-of select="terceraCopa"/></li>
		</ul>
	</xsl:template>
	
</xsl:stylesheet>