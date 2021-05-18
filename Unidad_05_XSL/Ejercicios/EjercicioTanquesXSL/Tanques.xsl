<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" encoding="UTF-8"/>

	<xsl:template match="/juegoTanques">
		<html>
			<head>
				<tittle>Tanques</tittle>
				<style>
					td {
					width: 50px;
					height: 50px;
					empty-cells: show;
					}
					.pared {
					background: black;
					}
					.tanque {
					background: red;
					}
				</style>
			</head>
			<body>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th style="text-align:center">Jugada</th>
						<th style="text-align:center">Tanque</th>
						<th style="text-align:center">Jugada</th>
					</tr>
					<xsl:for-each select="jugadasDescritas/jugada">
						<tr>
							<td>
								<xsl:value-of select="jugada"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
	
	
</xsl:stylesheet>	