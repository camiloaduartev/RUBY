# Curso de ruby

## Consola de ruby

Se invoca con el comando irb. Lo que significa interactive ruby 

- Ejemplo 

irb

## Variables

No hay necesidad de definir el tipo de variable o dato. Es tipado dinamico.


- Ejemplo:

### Numeros enteros y decimales(flotantes)

edad = 30

valor = 28.4


### Cadenas de texto

Se pueden definir mediante comillas dobles o sencillas.

desayuno = "cereal" o deasuyuno = 'cereal'.

La diferencia esta en que la comilla doble permite interpolación, mientras que la simple no.



### Imprimir en ruby

Se puede imrimir de dos formas, una con puts o la otra con print

- Ejemplo 

Con "puts" siempre hay un salto de linea despues de ejecutar el comando.

puts "Hola Mundo" ## Aqui basicamente hay un "\n" 

Con "print" no hay saltos de linea. Coloca todo en la misma linea

print "Hola Mundo"


#### Interpolación

La interpolacion nos permite ingresar una variable en una cadena de texto.

Se define con la sintaxis #{}

- Ejemplo 

nombre = "Camilo"

saludo = "buenas tardes"

puts "Hola #{nombre}, que tengas #{saludo}"

## Operadores

Existen varios operadores, en ruby estan

### Asignación

- Para asignar un valor se utilizan
```
a = 2
a += 2
a -= 2
a /= 2
a *= 2
```
### Comparación

- Para comparar variables
```
a == 2
a != 2
a < 4
a > 4
a >= 4
a <= 5
```

### Operadores aritmeticos

Division: /

Multiplicacion: *

Suma: +

Resta: -

Modulo: % # Devuelve el residuo de una división

Potencia: **

## Operadores logicos

&& AND 
|| OR




### El metodo gets

Permite tener una entrada de texto desde la consola de ruby irb.

- Ejemplo

nombre = gets  ## De esta forma lee lo que se escribe incluyendo el enter al final \n

Con gets.chomp no genera el salto de linea al darle el enter al final

nombre = gets.chomp o nombre = nonbre.chomp

### Convencion al crear metodos

Si no tiene argumentos, se crea sin parentesis y se llama sin parenthesis

- Ejemplo sin argumentos
```
def saludar
    puts "Hola Camilo"
end

saludar
```
- Ejemplo con argumentos
```
def saludar(nombre, saludo)
    puts "Hola #{nombre} que tengas #{saludo}"
end

saludar()
```
- Ejemplo 2
```
def saludar(nombre, saludo)
  puts "Hola #{nombre}, que tengas #{saludo}"
end

#print "Introduce tu nombre: "
#nombre = gets.chomp


#saludar(nombre, "buenas tardes")

def suma(num1, num2)
  suma = num1 + num2
  return suma
end

def resta(num1, num2)
  resta = num1 - num2
  return resta
end

a = 1
b = 2

resultado = suma(a,b)
resultado1 = resta(a,b)

  puts "La suma de #{a} y #{b} es #{resultado} y resta es #{resultado1}"

```

## Condiciones o condicionales

Se utiliza para evaluar una condición

edad = 20

- Ejemplo

```
if edad < 18
  puts "No puede pasar"
elsif edad < 21
  puts "Puedes entrar a la disco pero no puedes tomar alcohol"
else
  puts "Puede pasar y emborracharse"
end
```

## Estructura de datos

### Arreglos 

Basicamente es un array, se utiliza para guardar varios elementos dentro del mismo.

- Ejemplo

Se define con corchetes []

arreglo = ["Camilo", "Andres"]


Se pueden acceder a los elementos con la siguiente sintaxis
```
videojuegos = ["Mario", "LOL", "Halo", "FIFA", "Burn out"]

videojuegos.fetch 0
 => "Mario" 

El metodo fetch basicamente permite obtener el elemento del array mediante la posicion, sin embargo 
acepta un segundo parametro que permite imprimir un string si no hay nada en esta posicion por ejemplo:


videojuegos.fetch(5000, "No hay ningun elemento/juego aqui")

videojuegos[0]
 => "Mario"
 ``` 



#### Metodos propios de ruby

first, last, fetch, etc.

Añadir elemnto a un arreglo/array.

Se podria hacer asi 

videojuegos = ["Mario", "LOL"]

- Con <<

videojuegos << "HALO"

- Con push 

videojuegos.push("HALO")

Con cualquiera de los 2 metodos quedaria asi

videojuegos = ["Mario", "LOL", "HALO" ]

- Con unshift se agrega al inicio del arreglo

videojuegos.unshift("Minecraft")

["Minecraft", "Mario", "FIFA", "LOL", "PES"] 

- Si son varios juegos se pueden combinar los arrays por ejemplo

videojuegos += ["Super Smash", "DOTA"]
    
 => ["Minecraft", "Mario", "FIFA", "LOL", "PES", "Super Smash", "DOTA"] 

 - EL metodo shift y pop basicamente obtenen y eliminan un elemento de un array

``` 
 3.2.2 :048 > mine = videojuegos.shift
 => "Minecraft" 
3.2.2 :049 > mine
 => "Minecraft" 
3.2.2 :050 > videojuegos
 => ["Mario", "FIFA", "LOL", "PES", "Super Smash", "DOTA"] 
3.2.2 :051 > 
``` 

- Metodo pop
``` 
3.2.2 :051 > dota = videojuegos.pop
 => "DOTA" 
3.2.2 :052 > dota
 => "DOTA" 
3.2.2 :053 > videojuegos
 => ["Mario", "FIFA", "LOL", "PES", "Super Smash"] 
 ``` 

- Metodo drop, obtiene un elemento de un array pero no lo modifica.

``` 
3.2.2 :056 > videojuegos
 => ["LOL", "PES", "Super Smash"] 
3.2.2 :057 > restantes = videojuegos.drop(2)
 => ["Super Smash"] 
3.2.2 :058 > videojuegos
 => ["LOL", "PES", "Super Smash"] 
``` 

- Metodo slice, obtiene una rebanada de un array, pero tampoco modifica el array original, sintaxis slice(0, 2),


                              (desde que indice empieza, cuantos elementos va a tomar a partir de ahí)
3.2.2 :063 > videojuegos.slice(0,2)
 => ["LOL", "PES"] 
3.2.2 :064 > videojuegos
 => ["LOL", "PES", "Super Smash"] 


## Hash o Hashes

Un hash se crea mediante llaves{}, y se asigna un llave y un valor. key y value(k y v)

- Se puede definir de la siguiente forma
 
contacto = {"aldo" => 31302, "camilo" => 31033}

En las versiones recientes de ruby se definen asi:

contactos = {camilo: 2231, andres: 2323 }

y se accede mediante corchetes contacto["aldo"] ó [:aldo]

Tambien se pueden reasignar los valores de la llave por ejemplo
``` 
3.2.2 :013 > contacto["camilo"] = 33333
 => 33333 
3.2.2 :014 > contacto
 => {"aldo"=>31302, "camilo"=>33333}
``` 

o crear una nueva llave con su valor de la siguiente forma

contacto["duarte"] = 6666 

Ya que si no existe la crea al final del hash, algo similar a lo que ocurre en los arrays con push y <<

``` 
3.2.2 :008 > contactos["duarte"] = 6666 
 => 6666 
3.2.2 :009 > contactos
 => {:camilo=>6666, :andres=>2323, :Juan=>9999, "duarte"=>6666}
 ``` 

Tambien se puede utilizar el metodo store

contactos.store(:duarte, 43434)

Si requiere agregar varias llaves con su valor se podria utilizar el metodo merge.

contactos = {camilo: 6666, andres: 2323, Juan: 9999, "duarte"6666}

nuevo = contactos.merge({gloria: 4444})

Contactos sigue igual no se modifica pero el nuevo hash si la contiene

nuevo = {:camilo=>3434, :andres=>2323, :Juan=>9999, :pepe=>3434, :carlos=>77777444, :gloria=>4444}

Para modificar el mismo hash se podria utilizar el signo de admiracion sin necesidad de crear un nuevo hash
o tambien utilizar merge pero sobreescribiendo el hash.

- Ejemplo
``` 
3.2.2 :033 > contactos
 => {:camilo=>3434, :andres=>2323, :Juan=>9999, :pepe=>3434, :carlos=>77777444} 
contactos.merge!({gloria: 4444})
Lo anterior modificaria el hash contactos original al igual que lo sigueinte
contactos = contactos.merge({gloria: 4444})
```

- Para eliminar una key y value, se puede utilizar el metodo hash.delete("aqui_va_la_key")

- Existe el metodo llamado keys o has_keys o key? estos revisan las llaves del hash y devuelven un array en el caso de keys.
- Tambien existe el metodo value, hash_value, value? para revisar los valores del hash y debvuelve un array con los valores del hash.

## Ciclos en ruby

### Ciclo loop

El loop va a estar corriendo siempre, pero se puede salir del mismo con un break.

```
a = 0

loop{
  puts "Esto es un ciclo"
  a+=1
  if a == 10
    break
  end
}``` 

Tambien se puede utilizar el loop do este no lleva llaves y hace lo mismo

``` 
a = 0

loop do
  puts "Esto es un ciclo"
  a+=1
  if a == 10
    break
  end
end
``  

### Ciclo until

Es lo contrario del while y su sintaxis es

```
respuesta = ""
until respuesta == n
    puts "sigamos"
    print "Quiere seguir jugando?"
    respuesta = gets.chomp
    print "Vamos"
end
```

### Ciclo while

Es lo contrario a until y es un while de toda la vidad que ejecuta todo lo que esta dentro del hasta que se interrumpa.

vidas = 3

while vidas > 0
    puts "Tienes vidas sigue jugando"
    vidas -= 1
end  


La diferencia entre el while y el loop do, es basicamente que con el while se utiliza la condicion que sabemos exactamente como comportarse, mientras que el loop do podemos utilizar breaks y salirnos en diferente partes o formas.

### Ciclo Each

Es basicamente un for en ruby.

num_array = [1, 2, 3, 4, 5];

``
num_array.each do |num|
  puts num
end
```
Teniendo en cuenta lo anterior basciamente se nombra el array a recorrer luego se utiliza el metodo each y finalmente se hace do y la variable que va a representar el recorrido con | |.

Se pueden recorrer tanto arrays como hash.

```
contact_hash = {"Camilo": 12345, "Andres": 6777, "Ana": 6666 }

contact_hash.each do |k, v|
  puts "El nombre es #{k} y el numero es #{v}"
end

contact_hash.each_key do |k|
  puts "La llave es #{k}"
end


contact_hash.each_value do |v|
  puts "El valor es #{v}"
end
``

Se puede recorrer solamente la key con el metodo each_key y lo mismo con el value each_value.

## Bloques

yiel se utiliza para saltar de un bloque a otro

### Iterador times

Basicamente se puede iterar las veces que quiera con el metodo times, cuando estemos seguros de que un bloque de codigo se debe ejecutar ciertas veces.

- Ejemplo 

```
10.times do

  puts "Hola voy a iterar 10 veces"

end
```

Se le pudede pasar un parametro por medio de pipes || de la siguiente forma, donde basicamente el indice 

```
10.times do |t|
  puts "Hola voy a iterar 10 veces y este es el iterador #{t}"
end
```


-----------------------------------------------------------------------------




## POO - PROGRAMACIÓN ORIENTADA A OBJETOS EN RUBY

### Clases

Inicializar una clase(Las clases se definen de la siguiente firma el nombre iniciando en mayuscula y se es cumpuesta la siguiente palabra tambien va en mayusuculas o tambien llamado Camel Case).

BASICAMENTE LO SIGUIENTE ES EL EQUIVALENTE AL CONSTRUCTOR EN JAVA

```
class Auto
  def initialize()
    puts "Esto es una instancia de la clase Auto"
  end
end
```

#### Variables de instancia

Son variables que se definen por ejemplo en cada constructor y son de instancia porque van a pertenecer a un objeto y va a ser cambiante.

#### Readers en ruby /getter en JAVA

Se utiliza el attr_reader. La sintaxis es

```
class Perro

  attr_reader :raza, :color, :edad

  def initialize(raza, color, edad)
    @raza = raza
    @color = color
    @edad = edad
  end
  
end

perro = Perro.new("Pastor Aleman", "Cafe", 5)

puts perro.raza
puts perro.color
puts perro.edad
```

### Writer en ruby / Setter en JAVA

Se puede mediante un metodo escrito 

```
  def color=(color)
    @color = color
  end
```

PEro ruby lo trae de forma simplificada 

- Ejemplo  

attr_writer :raza, :color, :edad


### Existe aqui algo tambien es el accesor

Esto no existe en java, basicamente cumple las dos condiciones anteriores del writer y getter y depende de que queramos hacer o que necesitemos cambiar porque por ejemplo la raza quizas no tendria sentido de cambiarla y se utilizaria solo el att_reader y no el attr_accesor.

El attr_accessor tiene la siguiente sintaxis

```
class Perro
  
  attr_accessor :color, :raza, :edad

  def initialize(raza, color, edad)
    @raza = raza
    @color = color
    @edad = edad
  end

  # def color=(color)
  #   @color = color
  # end
  
end

perro = Perro.new("Pastor Aleman", "Cafe", 5)

puts perro.raza
puts perro.color
puts perro.edad
```

## Metodos

Son bloques de codigo que se pueden reutiliar y llamar desde disitintas partes

- Ejemplo 

```
  def ladrar
    puts "Guau Guau"
  end

  def descripcion
    puts "Soy un perro de raza #{@raza} de color #{@color} y tengo #{@edad} años"
  end
```

### Metodo to_s

Metodo propio de ruby de la clase object para convertir a string y ver como quiero representar los objetos de esa clase.
TAmbien como se heraeda se puede utilizar en las instancias.

```
  def to_s
    puts "Soy un perro de raza #{@raza} de color #{@color} y tengo #{@edad} años"
  end

  perro.edad.tos_
  Aqui me delvolveria la edad en string
```


## Switch case en ruby

Sintaxis

```
option = gets.chomp.to_i
      case option
      when 1
        puts "Ingrese el articulo a comprar"
        item = gets.chomp
        @list.add_item(item)
        puts "Articulo agregado: " + item
      when 2
        puts "Ingrese el indice del articulo a eliminar: "
        index = gets.chomp.to_i
        @list.del_item(index)
        puts "Articulo eliminado."
      when 3
        puts "Ingrese el indice del articulo a marcar como comprado: "
        index = gets.chomp.to_i
        @list.check_item(index)
        puts "Articulo marcado como comprado."
      when 4
        @list.show_all()
      when 5
        @list.remove_all()
        puts "Todos los articulos han sido eliminados."
      when 6
        puts "Saliendo de la aplicacion."
        break
      else
        puts "Opcion invalida. Por favor, ingrese una opcion valida."
      end

    end 
  ```
## Importar archivos en la consola o en el archivo .rb

- require './nombre_del_archivo' o tambien se le puede añadir el .rb

El require sirve para consola como para el propio archivo .rb, mientras

- load './nombre_del_archivo.rb'

## YIELD

BLOQUES - sE UTILIZA PARA DAR SALTOS ENTRE BLOQUES Y LA ISINTAXIS ES LA SIGUIENTE:
 EJMPLO AQUI

-----------------------------------------------

# LLEGAMOS A RAILS

Basicamente es un framework web basado en la arquitectura mvc que separa sus responsabilidades y ademas tambien provueven el dry, o dont repeat yoruself.

## MODELO

Se encarga de la logica y de la interaccion con la base de datos.
USualmente corresponde al nombre de una tabla de la base de datos

## VISTA

Es lo que se muestra al usuario en forma de html, mediante el erb.
ERB es una forma mas dinamica de etnregar el contenido mediante la combinacion entre ruby y html.

## CONTROLADOR

Es el responsable de responder a las peticiones por parte de los usuarios en forma de click.

Tambien despliega los resultados mediante las vistas. Es el intermediario entre la vista y el modelo.

-----------------




# DUDAS

- DIFERENCIA ENTRE EACH_WITH_INDEX Y EACH_INDEX
- COMO SE ENTIENDEN DOS ARCHIVOS DE RUBY SIN IMPORTARLO EN EL OTRO
- utilizar list.new o array.new en lugar de [] y ya
- Cual es la diferencia entre List y Array
- Se utilizo el metodo delete_at y clear en un array que no se habia visto
- En ruby existen las interfaces o gernecias como java? o las clases abstractas


# TAREAS

- Hacer apliacion similar a la de productos ahroa con una agenda con nombre y numero.
- HACER ALGUN EJECRICIO QUE ME PIDA CHATGPT APLICANDO TODO LO VISTO EN ESTAS NOTAS
- Hacer ejercicios con return y herencia en ruby
- Aprednder acerca de http, metodos get post, etc - Se le conocen como crud


