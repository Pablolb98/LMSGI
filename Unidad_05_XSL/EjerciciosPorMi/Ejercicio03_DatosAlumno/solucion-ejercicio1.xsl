<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" encoding="iso-8859-1"/>
	
	<xsl:template match="alumno">
		<xsl:value-of select="alumno/@dni"></xsl:value-of>
		<ul>
			<li>nombre: <xsl:value-of select="nombre"/></li>
			<xsl:apply-templates select="direccion"></xsl:apply-templates>
			<li>telefono: <xsl:value-of select="telefono"/></li>
		</ul>
	</xsl:template>
	
	
	<xsl:template match="direccion">
		<ul>
			<li>calle: <xsl:value-of select="calle"/></li>
			<li>numero: <xsl:value-of select="numero"/></li>
			<li>ciudad: <xsl:value-of select="ciudad"/></li>
			<li>provincia: <xsl:value-of select="provincia"/></li>
		</ul>
</xsl:template>
	
</xsl:stylesheet>