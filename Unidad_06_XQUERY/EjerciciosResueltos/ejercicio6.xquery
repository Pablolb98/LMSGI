(:6.- Realiza una conversión del formato XML del fichero, de forma que cada superheroe muestre el valor de sus atributos a través de elementos hijos:)

for $superheroe in doc('superheroes2.xml')/superheroe
let $nombreSuper := $superheroe/nombre
let $poderesSuper := $superheroe/poderes
let $amigosSuper := $superheroe/amigos
let $nivelSuper := $superheroe/nivel
order by $nombreSuper
return <superheroe>
    <nombre>{ data($nombreSuper) }</nombre>
    <poderes>{ data($poderesSuper) }</poderes>
    <amigos>{ data($amigosSuper) }</amigos>
    <nivel>{ data($nivelSuper) }</nivel>
</superheroe>