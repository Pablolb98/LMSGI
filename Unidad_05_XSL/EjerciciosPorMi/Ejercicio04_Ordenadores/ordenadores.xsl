<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" encoding="iso-8859-1"/>

	<xsl:template match="/ordenadores">
		<xsl:for-each select="ordenador">
			<ul>
				<li>
					<xsl:value-of select="procesador"/> - <xsl:value-of select="procesador/@generacion"/>
				</li>
				<li>
					RAM: <xsl:value-of select="RAM/tipo"/> - Capacidad: <xsl:value-of select="RAM/capacidad"/>
				</li>
				<li>
					ROM: <xsl:value-of select="ROM/tipo"/> - Capacidad: <xsl:value-of select="ROM/capacidad"/>
				</li>
				<li>
					HDD: <xsl:value-of select="HDD/tipo"/> - Capacidad: <xsl:value-of select="HDD/capacidad"/>
				</li>
				<li>
					Transporte: <xsl:value-of select="transporte/localidad/@fechaSalida"/> - <xsl:value-of select="transporte/localidad"/>
				</li>
			</ul>			
		</xsl:for-each>
	</xsl:template>

	
</xsl:stylesheet>
