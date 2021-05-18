(:3.- Obtén aquellos superhéroes que tengan algún poder relacionado con la "fuerza" y sean amigos de "Iron Man":)

for $superheroe in doc('superheroes.xml')/marvel/superheroe
where contains($superheroe/@poderes, 'uerza') and contains ($superheroe/@amigos, 'Iron Man')
return <superheroe>{$superheroe}</superheroe> (:El data es como el value of, tengo que tener en cuenta cuando es un elemento vacío y en caso de que
lo sea especificarlo con el /@noseque:)