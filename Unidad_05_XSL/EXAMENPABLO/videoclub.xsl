<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/videoclub">
        <html>
            <head>
                <title>VideoClub</title>
            </head>
            <body>
                <xsl:apply-templates select="peliculas/pelicula"/>
                <br/>
                <xsl:apply-templates select="videojuegos/videoJuego"/>
                <br/>
                <xsl:call-template name="tabla1"></xsl:call-template>
                <xsl:call-template name="tabla2"></xsl:call-template>
            </body>
        </html>
        
    </xsl:template>
    
            <xsl:template name="tabla1">
                <table border="1" width="100%">
                    <tr bgcolor="#2A3AEA">
                        <th>Título</th>
                        <th>Pegi</th>
                        <th>Duración/Plataforma</th>
                        <th>Alquiler Diario</th>				
                    </tr>
                    <td>
                        <td><xsl:call-template name="peliculas"></xsl:call-template></td>
                        <td><xsl:call-template name="videojuegos"></xsl:call-template></td>
                    </td>
                    
                </table>
            </xsl:template>
    
    
        <xsl:template name="peliculas">
            <xsl:for-each select="peliculas/pelicula">
                    <xsl:sort select="@orden" order="ascending"/>
                    <tr>
                        <xsl:choose>
                            <xsl:when test="position() mod 2 = 1">
                                <xsl:attribute name="bgcolor">F7FF7B</xsl:attribute>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:attribute name="bgcolor">F5FA9E</xsl:attribute> 
                            </xsl:otherwise>
                        </xsl:choose>
                        <td>
                            <xsl:value-of select="@idImagen"/>
                        </td>
                        <td>
                            <xsl:value-of select="@pegi"/>
                        </td>
                        <td>
                            <xsl:value-of select="@duracion"/>
                        </td>
                        <td>
                            <xsl:value-of select="@alquilerDiario"/>
                        </td>
                    </tr>
           </xsl:for-each>
        </xsl:template>
    
    <xsl:template name="videojuegos">
        <xsl:for-each select="videojuegos/videoJuego">
             <xsl:sort select="@orden" order="ascending"/>
                <tr>
                    <xsl:choose>
                        <xsl:when test="position() mod 2 = 1">
                            <xsl:attribute name="bgcolor">6DFDA7</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="bgcolor">B1FB8E</xsl:attribute> 
                        </xsl:otherwise>
                    </xsl:choose>
                    <td>
                        <xsl:value-of select="@idImagen"/>
                    </td>
                    <td>
                        <xsl:value-of select="@pegi"/>
                    </td>
                    <td>
                        <xsl:value-of select="@plataforma"/>
                    </td>
                    <td>
                        <xsl:value-of select="@alquilerDiario"/>
                    </td>
                </tr>
        </xsl:for-each>
    </xsl:template>
    
    

    
    
    <xsl:template name="tabla2">
        <table width="70%" border="1" id="tablaCancha">
            <xsl:call-template name="bucleForFila">
                <xsl:with-param name="i">1</xsl:with-param>
            </xsl:call-template>
        </table>
    </xsl:template>
    
    <xsl:template name="bucleForFila">
        <xsl:param name="i"/>
        <xsl:if test="$i &lt;= 5">
            <tr>
                <xsl:call-template name="bucleForColumna">
                    <xsl:with-param name="i"><xsl:value-of select="$i"/></xsl:with-param>
                    <xsl:with-param name="j">1</xsl:with-param>
                </xsl:call-template>
                <xsl:call-template name="bucleForFila">
                    <xsl:with-param name="i"><xsl:value-of select="$i + 1"/></xsl:with-param>
                </xsl:call-template>
            </tr>
        </xsl:if>
    </xsl:template>
    
    
    <xsl:template name="bucleForColumna">
        <xsl:param name="i"/>
        <xsl:param name="j"/> 
        <xsl:if test="$j &lt;= 5">
            <xsl:call-template name="celda">
                <xsl:with-param name="PosicionX"><xsl:value-of select="$j"/></xsl:with-param>
                <xsl:with-param name="PosicionY"><xsl:value-of select="$i"/></xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="bucleForColumna">
                <xsl:with-param name="i"><xsl:value-of select="$i"/></xsl:with-param>
                <xsl:with-param name="j"><xsl:value-of select="$j + 1"/></xsl:with-param>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    
    
    <xsl:template name="celda">
        <xsl:param name="PosicionX"/>
        <xsl:param name="PosicionY"/>
        <td>
            <xsl:for-each select="/imagenes">
                <xsl:if test="@x = $PosicionX and @y = $PosicionY">
                    <img src="{../imagen}"/>
                    <xsl:value-of select="imagen"/>
                </xsl:if>
            </xsl:for-each>
        </td>
    </xsl:template>
    
    
    
</xsl:stylesheet>