for $superheroe in doc('superheroes.xml')/marvel/superheroe
where ends-with($superheroe/@nombre, 'a')
return <superheroe>{ data($superheroe/@nombre) }</superheroe> (: El data es como el value of, tengo que tener en cuenta cuando es un elemento vacío y en caso de que
lo sea especificarlo con el /@noseque:)
