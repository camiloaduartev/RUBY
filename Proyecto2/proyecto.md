PROYECTO 2 — SISTEMA DE PARQUEADERO
Objetivo

Crear una aplicación de consola en Ruby para administrar un pequeño parqueadero.

El sistema debe permitir registrar clientes y vehículos, controlar las entradas y salidas de los vehículos, consultar los vehículos actualmente estacionados y calcular el valor que debe pagar cada vehículo al salir.

El proyecto debe desarrollarse utilizando Programación Orientada a Objetos (POO).

1. CLASES

El proyecto debe tener como mínimo estas cuatro clases:

Cliente
Vehiculo
Tarifa
Parqueadero

Puedes utilizar un archivo .rb independiente para cada clase.

Ejemplo:

proyecto2/
├── cliente.rb
├── vehiculo.rb
├── tarifa.rb
├── parqueadero.rb
└── main.rb

main.rb será el punto de entrada de la aplicación y se encargará principalmente de mostrar el menú y recibir las opciones del usuario.

2. CLASE CLIENTE

Representa a una persona que utiliza el parqueadero.

Atributos

Debe almacenar:

nombre
documento
telefono
Responsabilidad

La clase Cliente debe representar un cliente como objeto.

Ejemplo conceptual:

Cliente
├── nombre
├── documento
└── telefono

Un cliente debe poder ser creado como un objeto independiente del parqueadero.

Consideración

Un cliente puede tener uno o varios vehículos.

Piensa cómo representarías esa relación entre Cliente y Vehiculo.

3. CLASE VEHICULO

Representa un vehículo que puede ingresar al parqueadero.

Atributos básicos

Debe almacenar:

placa
tipo
marca

Los tipos pueden ser, por ejemplo:

carro
moto

Puedes agregar otros tipos si lo consideras necesario.

Información de estacionamiento

Cuando un vehículo ingresa al parqueadero, el sistema debe poder asociarle:

hora de entrada
hora de salida

Piensa cuidadosamente dónde debería almacenarse esta información.

Un vehículo debe poder existir aunque todavía no esté dentro del parqueadero.

4. CLASE TARIFA

La clase Tarifa debe encargarse de representar y consultar los precios del parqueadero.

Tarifas iniciales:

Carro → $3.000 por hora
Moto  → $1.500 por hora
Responsabilidad

La clase debe permitir determinar cuánto cuesta estacionar un vehículo dependiendo de su tipo.

Por ejemplo, conceptualmente:

¿Qué tarifa corresponde a un carro?
→ $3.000

¿Qué tarifa corresponde a una moto?
→ $1.500

También debe existir alguna forma de calcular el valor total que debe pagar un vehículo según:

su tipo
tiempo estacionado
5. CLASE PARQUEADERO

Esta será la clase encargada de administrar el funcionamiento del parqueadero.

Debe ser capaz de trabajar con objetos Cliente, Vehiculo y Tarifa.

Responsabilidades principales

El parqueadero debe poder:

Registrar la entrada de un vehículo.
Registrar la salida de un vehículo.
Consultar los vehículos actualmente estacionados.
Buscar un vehículo por su placa.
Consultar las tarifas.
Calcular el valor que debe pagar un vehículo.
Evitar registrar dos veces el mismo vehículo.
Verificar que un vehículo exista antes de registrar su salida.
Importante

Parqueadero no debe crear todos los objetos directamente dentro de la clase.

Por ejemplo, conceptualmente:

Cliente.new(...)
Vehiculo.new(...)
Tarifa.new(...)

pueden crearse desde el programa principal y posteriormente ser utilizados por Parqueadero.

El parqueadero debe administrar objetos, no encargarse de representar cada una de esas entidades.

6. REGISTRAR ENTRADA

Cuando un vehículo ingresa al parqueadero, el usuario debe proporcionar como mínimo:

placa
tipo
marca
hora de entrada

Si el sistema relaciona vehículos con clientes, también debe poder asociar el vehículo con su propietario.

Ejemplo:

========== REGISTRAR ENTRADA ==========

Placa: JPW333
Tipo: carro
Marca: Toyota
Cliente: Camilo Duarte
Hora de entrada: 17:30

Vehículo registrado correctamente.

El vehículo debe quedar almacenado en el parqueadero como un vehículo actualmente estacionado.

Validaciones

El sistema debería comprobar, como mínimo:

que la placa no esté ya dentro del parqueadero
que el tipo de vehículo sea válido
que los datos necesarios hayan sido proporcionados
7. REGISTRAR SALIDA

Para registrar la salida, el usuario debe proporcionar:

placa del vehículo
hora de salida

El sistema debe:

Buscar el vehículo.
Verificar que esté dentro del parqueadero.
Registrar su hora de salida.
Calcular cuánto tiempo permaneció estacionado.
Consultar la tarifa correspondiente.
Calcular el valor total.
Mostrar el resultado.
Retirar el vehículo de los vehículos actualmente estacionados.

Ejemplo:

========== REGISTRAR SALIDA ==========

Placa: JPW333
Hora de salida: 20:30

Hora de entrada: 17:30
Hora de salida: 20:30
Tiempo estacionado: 3 horas

Tarifa: $3.000/hora
Total a pagar: $9.000

Vehículo retirado correctamente.
8. CÁLCULO DEL VALOR

El valor debe depender del tipo de vehículo y del tiempo que permaneció dentro del parqueadero.

Ejemplo:

CARRO
$3.000 por hora

2 horas → $6.000
3 horas → $9.000
4 horas → $12.000
MOTO
$1.500 por hora

2 horas → $3.000
3 horas → $4.500
4 horas → $6.000
Decide una regla

Debes decidir cómo manejar períodos menores a una hora.

Por ejemplo:

30 minutos
45 minutos
1 hora y 20 minutos

Puedes implementar una regla sencilla, como cobrar por hora iniciada:

30 minutos → 1 hora
1 hora 20 minutos → 2 horas
2 horas 10 minutos → 3 horas

Documenta la regla que elijas.

9. MOSTRAR VEHÍCULOS

Debe existir una opción para mostrar todos los vehículos que actualmente se encuentran dentro del parqueadero.

Ejemplo:

========== VEHÍCULOS ESTACIONADOS ==========

Placa: JPW333
Tipo: Carro
Marca: Toyota
Entrada: 17:30

Placa: ABC123
Tipo: Moto
Marca: Yamaha
Entrada: 18:15

Si no hay vehículos:

No hay vehículos estacionados.
10. BUSCAR VEHÍCULO

El usuario debe poder buscar un vehículo utilizando su placa.

Ejemplo:

Ingrese la placa: JPW333

Vehículo encontrado:

Placa: JPW333
Tipo: Carro
Marca: Toyota
Hora de entrada: 17:30

Si no existe:

No se encontró ningún vehículo con esa placa.
11. MOSTRAR TARIFAS

Debe existir una opción para consultar las tarifas actuales.

Ejemplo:

========== TARIFAS ==========

Carro → $3.000 / hora
Moto  → $1.500 / hora
12. MENÚ PRINCIPAL

La aplicación debe ejecutarse mediante un menú similar a:

================================
       PARQUEADERO
================================

1. Registrar entrada
2. Registrar salida
3. Mostrar vehículos
4. Buscar vehículo
5. Mostrar tarifas
6. Salir

Seleccione una opción:

El menú debe repetirse hasta que el usuario seleccione 6. Salir.

13. RELACIÓN ENTRE LAS CLASES

Una parte importante del ejercicio es determinar cómo se comunican los objetos.

Conceptualmente:

Cliente
   │
   │ tiene
   ↓
Vehiculo
   │
   │ ingresa a
   ↓
Parqueadero
   │
   │ consulta
   ↓
Tarifa

No es obligatorio implementar exactamente esta estructura.

Debes analizar qué objeto debe ser responsable de cada operación.

Por ejemplo:

¿Quién representa al cliente?
→ Cliente

¿Quién representa al vehículo?
→ Vehiculo

¿Quién conoce los precios?
→ Tarifa

¿Quién controla qué vehículos están dentro?
→ Parqueadero

La idea principal es evitar que una sola clase termine haciendo absolutamente todo.

14. ESTRUCTURA RECOMENDADA

Puedes organizar el proyecto así:

proyecto2/
│
├── cliente.rb
├── vehiculo.rb
├── tarifa.rb
├── parqueadero.rb
└── main.rb

Cada archivo debe contener principalmente la clase correspondiente.

main.rb será responsable de iniciar la aplicación, crear los objetos necesarios y controlar la interacción con el usuario.

Utiliza require para comunicar los diferentes archivos.

15. REQUISITOS DE POO

El proyecto debe utilizar correctamente:

clases
objetos
constructores (initialize)
atributos
métodos
variables de instancia
encapsulamiento
interacción entre objetos
arrays o hashes cuando sean necesarios
manejo de errores o excepciones cuando sea apropiado

No es necesario utilizar herencia si no encuentras una razón real para utilizarla.

16. RETO EXTRA ⭐

Una vez terminada la versión básica, intenta agregar:

eliminar clientes
registrar varios vehículos por cliente
consultar los vehículos de un cliente
cambiar tarifas
generar un recibo de pago
mostrar cuánto dinero ha recaudado el parqueadero
guardar el historial de vehículos que ya salieron
manejar correctamente vehículos que permanezcan menos de una hora
impedir placas duplicadas
validar formatos básicos de placa

Estos puntos son opcionales.

REGLA PRINCIPAL DEL PROYECTO

No intentes escribir todo el código de una vez.

Primero diseña las clases:

Clase
├── Atributos
├── Métodos
└── Responsabilidad

Después crea los objetos y prueba que puedan comunicarse entre sí.

Finalmente construye el menú de consola.

El objetivo principal no es hacer una aplicación enorme, sino practicar cómo diseñar objetos que colaboran entre sí para resolver un problema real.



1. Primero, la arquitectura que construiste

Actualmente tienes:

main.rb
   │
   ↓
Parqueadero
   │
   ├──── Vehiculo
   │        │
   │        └──── Cliente
   │
   └──── Tarifa

Y eso me gusta.

La relación que hiciste es:

Cliente
   ↑
   │ tiene
Vehiculo
   ↑
   │ está dentro de
Parqueadero
   │
   │ utiliza
   ↓
Tarifa

Esto es bastante razonable.

Cliente

Representa una persona.

Vehiculo

Representa un vehículo y además conoce a su dueño:

@cliente = cliente

Esto está bien pensado.

Parqueadero

Administra los vehículos que están actualmente dentro:

@parqueadero = []

También está bien.

Tarifa

Contiene las tarifas.

También está bien como primera aproximación.

2. Pero hay un problema GRANDE con Tarifa

Aquí tienes:

puts "Como su vehiculo es tipo #{vehiculo.tipo} su tarifa es de #{Tarifa::TARIFA_CAMIONETA} pesos por hora"
total_a_pagar = tiempo_estacionado * Tarifa::TARIFA_CAMIONETA

Esto significa que:

Moto       → $10.000
Carro      → $10.000
Camioneta  → $10.000

😂

Porque siempre estás utilizando TARIFA_CAMIONETA.

Tú ya tienes:

TARIFA_CARRO = 3000
TARIFA_MOTO = 1000
TARIFA_CAMIONETA = 10000

pero nunca estás seleccionando cuál corresponde.

Este sería uno de los primeros detalles que corregiría.

Tarifa debería tener alguna responsabilidad como:

"Dado un tipo de vehículo, dime cuál es su tarifa."

Conceptualmente:

tipo = "carro"
       ↓
Tarifa
       ↓
3000
tipo = "moto"
       ↓
Tarifa
       ↓
1000
tipo = "camioneta"
       ↓
Tarifa
       ↓
10000

Y entonces Parqueadero no debería conocer directamente:

Tarifa::TARIFA_CARRO
Tarifa::TARIFA_MOTO
Tarifa::TARIFA_CAMIONETA

El parqueadero debería preguntarle a Tarifa.

Eso es precisamente delegar responsabilidad.

3. Aquí tienes una buena oportunidad para mejorar POO

Actualmente Parqueadero está haciendo esto:

Parqueadero
├── busca vehículo
├── calcula tiempo
├── conoce las tarifas
├── calcula dinero
├── imprime resultados
└── elimina vehículo

Está empezando a convertirse en una clase que hace demasiadas cosas.

Yo lo llevaría hacia:

Parqueadero
├── administra vehículos
├── registra entradas
└── registra salidas

Vehiculo
└── representa vehículo

Cliente
└── representa cliente

Tarifa
├── conoce precios
└── calcula valor

Entonces cuando hay una salida:

Parqueadero
   │
   │ "Vehículo estuvo de 5:30 a 8:30"
   ↓
Tarifa
   │
   │ "Ese vehículo es carro"
   ↓
$9.000

Parqueadero coordina. Tarifa calcula el costo.

Eso me parece mejor diseño.

4. Sobre tu pregunta: ¿las opciones del menú deberían ser objetos?

No.

No conviertas esto:

case option
when 1
...
when 2
...

en objetos solamente porque estás aprendiendo POO.

Eso sería sobreingeniería.

Tu main.rb puede ser perfectamente procedural.

De hecho, me gusta que tengas:

main.rb
   ↓
interacción con usuario
   ↓
Parqueadero
   ↓
lógica del negocio

El main funciona como una especie de controlador muy básico.

Su responsabilidad es:

"Preguntarle al usuario qué quiere hacer y pedirle los datos."

Mientras que Parqueadero debería encargarse de:

"¿Se puede registrar? ¿Existe? ¿Está dentro? ¿Cuánto debe pagar?"

Esa separación está muy bien para el nivel en el que estás.

5. Hay otra cosa que cambiaría: los puts

Actualmente tienes cosas como:

def buscar_vehiculo(placa_a_buscar)
  ...
  puts "Vehiculo encontrado...."
  ...
end

Eso funciona.

Pero conceptualmente, Parqueadero no debería ser responsable de hablar con el usuario.

Piensa:

main.rb
→ "¿Qué quieres hacer?"

Parqueadero
→ "El vehículo existe."

main.rb
→ "Perfecto, entonces muestro el mensaje."

Es decir, idealmente los métodos podrían devolver información en lugar de imprimirla directamente.

Por ejemplo, conceptualmente:

parqueadero.buscar_vehiculo(...)
             ↓
        objeto / nil

Y main decide:

¿Encontró?
  Sí → mostrar mensaje
  No → mostrar "no encontrado"
Pero...

No tienes que reescribir todo ahora.

Para este proyecto está bien que hayas usado puts dentro de Parqueadero. Es un buen punto de partida.

Simplemente quiero que conozcas la diferencia porque cuando llegues a Rails esto será muchísimo más importante.

6. Sí te falta el manejo de "vehículo no encontrado"

Lo viste correctamente.

Tu:

registrar_salida

actualmente hace:

buscar
↓
si encuentra
↓
hacer todo

Pero si no encuentra...

no pasa nada.

Y luego main.rb dice:

puts "Salida con exito"

😬

Entonces puedes tener:

Ingrese placa:
XYZ999

Salida con éxito

cuando el vehículo ni siquiera existe.

Eso sí hay que corregirlo.

7. Y tienes el mismo problema en buscar_vehiculo

Tienes:

encontrado = false

pero después nunca utilizas encontrado.

Eso es una pista de que estabas pensando:

"Necesito saber si lo encontré."

Pero te faltó terminar esa lógica.

Debería existir un comportamiento para:

Buscar ABC123

→ encontrado

y:

Buscar XYZ999

→ no encontrado
8. También debes impedir placas duplicadas

Ahora mismo puedes hacer:

Entrada
ABC123

Entrada
ABC123

y tendrías dos vehículos con la misma placa dentro del parqueadero.

Eso debería estar prohibido.

El parqueadero debería comprobar:

¿Ya existe ABC123?
       ↓
     Sí → rechazar entrada
     No → registrar

Esta es una responsabilidad perfecta de Parqueadero.

Porque Parqueadero sabe cuáles vehículos están dentro.

9. También deberías validar el tipo

Actualmente alguien puede escribir:

bicicleta

y tu programa lo acepta:

Vehiculo.new(..., "bicicleta", ...)

pero Tarifa no sabe qué hacer con eso.

Deberías decidir cuáles son los tipos permitidos:

carro
moto
camioneta

y rechazar cualquier otro.

10. El cálculo del tiempo necesita una decisión

Ahora haces:

(Time.parse(hora_salida) - Time.parse(hora_entrada))/3600

Eso está bien para obtener horas decimales.

Por ejemplo:

17:00 → 19:30

2.5 horas

Pero tienes que decidir:

¿Cobras exactamente el tiempo?
2.5 × $3000
= $7500

o:

¿Cobras por hora iniciada?
2.5 horas
↓
3 horas
↓
$9000

Yo usaría hora iniciada, porque es una regla muy común en ejercicios de parqueadero y además te obliga a trabajar un poquito más con Ruby.

11. Otro detalle: la hora de salida

Tienes:

@hora_de_salida = hora_de_salida

No necesitas realmente guardar esto como variable de instancia del Parqueadero.

¿Por qué?

Porque estás haciendo:

Vehículo A sale → hora 20:00
Vehículo B sale → hora 21:00

El parqueadero no necesita recordar permanentemente:

@hora_de_salida

Es simplemente un dato utilizado durante esa operación de salida.

Eso podría ser una variable local.

Esto es un buen ejercicio para distinguir:

@variable

vs.

variable

Una variable de instancia representa estado que pertenece al objeto y debe persistir.

Una variable local representa información temporal necesaria durante una operación.

12. Tu Cliente tiene otro pequeño detalle

Tienes:

attr_reader :nombre

pero tienes:

@documento
@telefono

También son atributos del cliente.

Si después quieres mostrar:

Documento: 123456
Teléfono: 300123456

no tienes acceso mediante métodos.

Yo probablemente pondría lectores para los tres:

nombre
documento
telefono

No necesitas attr_accessor si no quieres modificar esos datos.

13. Tu relación Vehiculo → Cliente me gusta

Esto:

vehiculo = Vehiculo.new(
  argumentos[0],
  argumentos[1],
  argumentos[2],
  cliente,
  argumentos[3]
)

y luego:

@cliente = cliente

es justamente el concepto que estuvimos hablando.

Tienes:

Cliente
   │
   │
   ▼
Vehiculo

El vehículo sabe quién es su cliente.

Y después puedes hacer:

vehiculo.cliente.nombre

Eso está muy bien para el ejercicio.

No necesitaste herencia.

No necesitaste hacer:

Cliente
   ↓
Vehiculo

como herencia.

Simplemente tienes un objeto dentro de otro objeto.

Eso es exactamente lo que quería que empezaras a entender.

14. Vehiculo está bastante limpio

Tu clase:

class Vehiculo
  attr_reader :cliente, :marca, :placa, :hora_entrada, :tipo

  def initialize(placa, tipo, marca, cliente, hora_entrada)
    @placa = placa
    @tipo = tipo
    @marca = marca
    @cliente = cliente
    @hora_entrada = hora_entrada
  end
end

Para el proyecto actual, me parece correcta y sencilla.

Y aquí quiero destacar algo:

Tú inicialmente cuestionaste si hora_entrada debía pertenecer al vehículo.

Después de ver cómo implementaste el sistema, yo diría:

En tu diseño actual es defendible que sí esté ahí.

Porque tu Vehiculo representa:

"Este vehículo que actualmente está estacionado."

Y mientras esté en @parqueadero, tiene una hora de entrada.

No necesitas obligatoriamente crear una clase Estadia para este proyecto.

La idea de Estadia que discutimos antes sería más apropiada si quisieras llevar historial de múltiples entradas y salidas.

15. Parqueadero#registrar_entrada está demasiado simple, pero está bien

Ahora tienes:

def registrar_entrada(vehiculo)
  @parqueadero.push(vehiculo)
end

Está perfecto como operación básica.

Pero debería terminar evolucionando a:

registrar_entrada
       ↓
¿placa ya existe?
       ↓
¿tipo válido?
       ↓
registrar

Y posiblemente:

¿parqueadero lleno?

si quieres agregar capacidad.

16. mostrar_vehiculos funciona

Esto:

@parqueadero.each do |vehiculo|

está bien.

Pero podrías mostrar más información:

Placa
Tipo
Marca
Cliente
Hora de entrada

No es obligatorio, pero hace que el programa se sienta más terminado.

17. mostrar_tarifa está vacío

Tienes:

def mostrar_tarifa
end

pero luego haces todo desde main.rb:

puts "Para Camioneta..."
puts "Para Carro..."
puts "Para moto..."

Aquí tienes una inconsistencia.

Tienes un método:

Parqueadero#mostrar_tarifa

pero no lo utilizas.

Yo decidiría quién debe ser responsable de mostrar las tarifas.

Personalmente:

Tarifa
↓
conoce las tarifas

main
↓
las muestra al usuario

O:

Parqueadero
↓
consulta Tarifa

main
↓
muestra

Lo importante es que no tengas un método que existe pero nunca utilizas.

18. El require también lo puedes mejorar

Actualmente:

main.rb
require './parqueadero'

y parqueadero.rb:

require './vehiculo'
require './tarifa'

y vehiculo.rb:

require './cliente'

Funciona.

Pero main.rb está dependiendo indirectamente de que parqueadero.rb cargue vehiculo y tarifa.

Es decir:

main
 ↓
parqueadero
 ↓
vehiculo
 ↓
cliente

Para este proyecto está bien.

Más adelante aprenderás a organizar mejor las dependencias, pero no me preocuparía demasiado ahora.

19. El mensaje de "Cliente registrado con éxito"

Tienes:

parqueadero.registrar_entrada(vehiculo)
puts "Cliente registrado con exito"

Pero realmente registraste:

vehículo + entrada

El cliente simplemente fue creado.

Yo cambiaría conceptualmente el mensaje por:

Vehículo registrado correctamente.
Entrada registrada correctamente.

o algo similar.

20. ¿Qué haría yo para dejarlo terminado?

No agregaría más clases.

Haría estas mejoras en este orden:

🔴 Prioridad 1 — Funcionamiento
Corregir las tarifas según el tipo - YA
Si la placa no existe al salir → mensaje - YA 
Si la placa no está dentro → mensaje. - YA
Impedir placas duplicadas. - YA
Validar tipo de vehículo. - YA
Si no hay vehículos → mensaje en mostrar_vehiculos.
Si no se encuentra vehículo → mensaje en búsqueda.
Decidir cómo cobrar fracciones de hora.
Validar que hora salida > hora entrada.
🟡 Prioridad 2 — Diseño
Hacer que Tarifa sea quien determine el precio.
Reducir la lógica de negocio que está directamente en main.
Decidir qué métodos deberían devolver información en lugar de hacer puts.
Eliminar @hora_de_salida del Parqueadero.
Completar attr_reader de Cliente.
🟢 Prioridad 3 — Pulido
Mejorar mensajes.
Mostrar información más completa.
Organizar mejor los require.
Agregar una capacidad máxima al parqueadero.
Agregar historial de vehículos que ya salieron.
