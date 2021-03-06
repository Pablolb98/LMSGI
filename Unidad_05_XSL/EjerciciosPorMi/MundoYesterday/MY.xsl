<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    
    
    <xsl:template match="/periodico">
        
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
                
                <tittle>El mundo yesterday</tittle><style type="text/css">
                    body {
                    font-family: Arial;
                    font-size: 12px;
                    }
                    
                    ol, ul
                    {
                    margin-top: 10px;
                    margin-left: 0px;
                    }
                    
                    #menu li
                    {
                    margin-left: 0px;
                    display: inline;
                    list-style-type: none;
                    padding: 10px 50px;
                    }
                    
                    .noticia {
                    /* border: #000 solid 1px; */
                    padding: 10px 5px;
                    float: left;
                    width: 338px;
                    }
                    
                    .noticia img {
                    width: 338px;
                    }
                    
                    .noticiaDobleAncho {
                    /* border: #000 solid 1px; */
                    padding: 10px 5px;
                    float: left;
                    width: 690px;
                    }
                    
                    .noticiaDobleAncho img {
                    width: 690px;
                    }
                    
                    .fechaNoticia {
                    color: #A3A34B;
                    }
                    
                    .comentariosNoticia {
                    color: #A3A34B;
                    padding-left: 20px;
                    }
                    
                    .divPublicidad {
                    /* border: #000 solid 1px; */
                    padding: 10px 5px;
                    float: right;
                    width: 280px;                    }
                    }
                    
                    .divPublicidad img {
                    width: 200px;
                    }
                </style></head>
            <body>
                <div style="width:1000px ; margin: 0 auto">
                    <div style="width: 1000px"><img src="http://webdidacticarafaelmunoz.appspot.com/lmsgi/ejercicios-cap5/examen/2015-enero/recursos/el-mundo-yesterday.jpg" width="997" height="115"/></div>
                    <div id="menu" style="width: 1000px; margin: 0px; padding: 0px;">
                        <ul>
                            <li style="background: #DDE640;"><a href="#">Nacional</a></li>
                            <li style="background:#ff7b00;"><a href="#">Internacional</a></li>
                            <li style="background: #DDE640;"><a href="#">Sociedad</a></li>
                            <li style="background:#ff7b00;"><a href="#">Cultura</a></li>
                            <li style="background: #DDE640;"><a href="#">Ciencia</a></li>
                            <li style="background:#ff7b00;"><a href="#">Deportes</a></li>
                        </ul>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
    
    
</xsl:stylesheet>