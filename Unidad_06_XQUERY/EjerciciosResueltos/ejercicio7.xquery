(:7.- Realiza un ejercicio muy parecido al anterior (6) pero consigue que la conversión se haga a un 
formato HTML, en el que para cada superheroe aparezca una tabla.:)

<html>
    <head>
        <title>Ejercicio7</title>
    </head>
    <body> {
        for $superheroe in doc('superheroes.xml')/marvel/superheroe
        let $nombre := $superheroe/@nombre
        let $poderes := $superheroe/@poderes
        let $amigos := $superheroe/@amigos
        let $nivel := $superheroe/@nivel
        return 
            <div>
                <table align="center" border="1">
                    <tr>
                        <td style="font-weight:bolder;" colspan="2"> { data($nombre) } </td>
                    </tr>
                    <tr>
                        <td>Poderes: </td>
                        <td> { data($poderes) } </td>
                    </tr>
                    <tr>
                        <td>Amigos: </td>
                        <td> { data($amigos) } </td>
                    </tr>
                    <tr>
                       <td>Nivel: </td>
                       <td> { data($nivel) } </td>
                    </tr>
                </table>  
                <br></br>
            </div>
        }
    </body>
</html>