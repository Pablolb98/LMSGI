<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" encoding="UTF-8"/>

	<xsl:template match="/juegoTanques">
		<html>
			<head>
				<tittle>JUEGO TANQUES</tittle>
			</head>
			<body>
				<table border="1" width="90%">
					<tr>
						<td>Jugada</td>
						<td>Tanque</td>
						<td>Descripcion</td>
					</tr>
				<xsl:for-each select="jugadasDescritas/jugada">	
					<tr>
						<xsl:choose>
							<xsl:when test="position() mod 2=1"><!--El when y el otherwise es como el IF y el ELSE-->
								<xsl:attribute name="bgcolor">#C7D4F0</xsl:attribute><!--Esto es color azul clarito-->
							</xsl:when>
						<xsl:otherwise>
							<xsl:attribute name="bgcolor">#FFFFFF</xsl:attribute> <!--Esto es color blanco-->
						</xsl:otherwise>
						</xsl:choose>
						<td><xsl:value-of select="position()"/></td>
						<td><xsl:value-of select="@jugador"/>
							<xsl:choose>
							<xsl:when test="@jugador='1'">
								<img width="80px" src="http://www.webdidacticarafaelmunoz.appspot.com/lmsgi/image/tanque1.jpg"></img>
							</xsl:when>
							<xsl:otherwise>
							<img width="80px" src="http://www.webdidacticarafaelmunoz.appspot.com/lmsgi/image/tanque2.jpg"></img>
						</xsl:otherwise>
							</xsl:choose>
						</td>
						<td><xsl:value-of select="@desc"/></td>	
					</tr>
				</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
