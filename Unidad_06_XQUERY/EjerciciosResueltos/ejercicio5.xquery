(:5.- Utiliza la función "avg" de XQuery para obtener la media del atributo "nivel" de todos los superhéroes.:)

for $marvel in doc('superheroes.xml')/marvel
let $media := avg($marvel/superheroe/@nivel)
return <media>{$media}</media>