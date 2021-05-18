(: 2.- Utiliza la función "contains" de XQuery para encontrar aquellos superheroes que tengan un poder relacionado con la "fuerza" :)
for $superheroe in doc('superheroes.xml')/marvel/superheroe
where contains(lower-case($superheroe/@poderes), lower-case('fuerza'))
return <superheroe>{$superheroe}</superheroe> (: El data es como el value of, tengo que tener en cuenta cuando es un elemento vacío y en caso de que
lo sea especificarlo con el /@noseque:)
