(: 4.- Realiza la consulta 3 otra vez, pero evita que las mayúsculas y minúsculas sean un problema, usando la función lower-case o upper-case :)

for $superheroe in doc('superheroes.xml')/marvel/superheroe
where contains(lower-case($superheroe/@poderes), lower-case('fuerza')) and contains (lower-case($superheroe/@amigos), lower-case('Iron Man'))
return <superheroe>{$superheroe}</superheroe> (: El data es como el value of, tengo que tener en cuenta cuando es un elemento vacío y en caso de que
lo sea especificarlo con el /@noseque:)
