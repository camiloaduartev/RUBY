# EJERCICIOS DE RUBY ANTES DE RUBY ON RAILS
# ===============================================

# Objetivo:
# Completar estos ejercicios para consolidar los fundamentos de Ruby,
# especialmente POO, antes de continuar con Ruby on Rails.

# TOTAL:
# - 35 ejercicios
# - 2 proyectos pequeños

# Orden recomendado:
# Fundamentos -> Métodos -> Arrays/Hashes -> Bloques/Ciclos -> POO
# -> Excepciones -> Proyectos -> Ruby on Rails


# BLOQUE 1 — FUNDAMENTOS
# ======================

# 1. Calculadora básica
# Pide dos números y muestra suma, resta, multiplicación, división y residuo.
# Practica: variables, gets, to_i/to_f y operadores.

# 2. Información personal
# Pide nombre, edad y ciudad. Muestra una frase usando interpolación.
# Practica: Strings, gets.chomp e interpolación.

# 3. El ejercicio 3 se perdio.

# 4. Número positivo, negativo o cero
# Pide un número y determina cuál de las tres posibilidadesddfdf es.

# 5. Menú con case
# Crea un menú:
# 1. Saludar
# 2. Mostrar fecha
# 3. Mostrar mensaje
# 4. Salir
# Practica: case y entrada de datos.


# BLOQUE 2 — MÉTODOS
# ==================

# 6. Método saludar
# Crea saludar(nombre), que devuelva "Hola <nombre>".
# No uses puts dentro del método.
# Practica: métodos, parámetros y retorno.

# 7. Calculadora con métodos
# Crea:
# - sumar(a, b)
# - restar(a, b)
# - multiplicar(a, b)
# - dividir(a, b)

# 8. ¿Es mayor de edad?
# Crea mayor_de_edad?(edad), que devuelva true o false.

# 9. Conversor de temperatura
# Crea métodos para convertir Celsius <-> Fahrenheit.
# Después crea un pequeño menú.


# BLOQUE 3 — ARRAYS
# =================

# 10. Lista de videojuegos
# Crea un Array con 5 videojuegos y muestra:
# - primero
# - último
# - cantidad
# - elemento en una posición determinada.

# 11. Agregar y eliminar
# Practica:
# <<, push, unshift, shift, pop y delete_at.

# Agrega un videojuego al final del Array utilizando <<.
# Agrega otro videojuego al final utilizando push.
# Agrega otro videojuego al principio utilizando unshift.
# Elimina el primer videojuego utilizando shift.
# Elimina el último videojuego utilizando pop.
# Elimina un videojuego que se encuentre en una posición específica utilizando delete_at.
# Después de cada operación, muestra el Array para comprobar cómo fue cambiando.


# 12. Recorrer un Array
# Dado un Array de números, muestra cada elemento utilizando each.

# 13. each_with_index y each_index
# Muestra los productos junto con su índice.
# Ejemplo:
# 0 - Mouse
# 1 - Teclado
# 2 - Monitor
# 3 - Audífonos

# 14. Estadísticas de números
# Dado un Array de números, calcula:
# - suma
# - promedio
# - mayor
# - menor
# Intenta hacerlo primero con ciclos y métodos básicos.

# 15. Manipulación de Array
# Dado [1,2,3,4,5,6], practica:
# - drop
# - slice
# - pop
# - clear


# BLOQUE 4 — HASHES Y SYMBOLS
# ===========================

# 16. Agenda de contactos
# Crea un Hash:
# {
#   nombre: "Camilo",
#   telefono: "3000000000",
#   ciudad: "Bogotá"
# }
# Muestra cada información.

# 17. Modificar un Hash
# Permite modificar nombre, teléfono y ciudad, y agregar una nueva propiedad.

# 18. Recorrer un Hash
# Dado un Hash de productos, muestra:
# producto -> precio
# utilizando each.

# 19. Buscar información
# Crea un Hash de usuarios y permite buscar un usuario por su clave.
# Indica si existe o no.

# 20. Combinar Hashes
# Crea dos Hashes y combínalos usando merge y después merge!.
# Comprueba qué ocurrió con el Hash original.


# BLOQUE 5 — CICLOS Y BLOQUES
# ===========================

# 21. Contador
# Utiliza times para imprimir números hasta el número indicado por el usuario.

# 22. Juego de intentos
# El programa tiene un número secreto.
# El usuario tiene máximo 5 intentos.
# Indica si el número secreto es mayor o menor.
# Si acierta, muestra un mensaje de victoria.
# Practica: loop y break.

# 23. Menú que se repite
# Crea:
# 1. Mostrar saldo
# 2. Depositar
# 3. Retirar
# 4. Salir
# El menú debe repetirse hasta elegir salir.

# 24. Saltar elementos
# Dado [1,2,3,4,5,6,7,8,9,10], utiliza each y next para mostrar
# solamente los números pares.


# BLOQUE 6 — POO BÁSICA
# =====================

# 25. Clase Persona
# Crea una clase Persona.
# Crea tres personas usando .new.
# Agrega un método presentarse.

# 26. Persona con atributos
# Agrega:
# @nombre
# @edad
# @ciudad
# Utiliza initialize.
# Ejemplo:
# persona = Persona.new("Camilo", 25, "Bogotá")

# 27. attr_reader y attr_accessor
# Haz que:
# - nombre solamente pueda leerse
# - edad pueda leerse y modificarse
# - ciudad pueda leerse y modificarse

# 28. Clase CuentaBancaria
# Atributos:
# - titular
# - saldo
# Métodos:
# - depositar
# - retirar
# - mostrar_saldo
# No permitas retirar más dinero del disponible.

# 29. Clase Producto
# Atributos:
# - nombre
# - precio
# - cantidad
# Métodos:
# - valor_total
# - aumentar_stock
# - disminuir_stock

# 30. Clase Perro + to_s
# Atributos:
# - nombre
# - raza
# - edad
# Implementa to_s para que:
# puts perro
# produzca una descripción legible.


# BLOQUE 7 — POO INTERMEDIA
# =========================

# 31. Herencia: Animal -> Perro / Gato
# Animal tendrá:
# - comer
# - dormir
# Cada hijo tendrá su propio hacer_sonido.

# 32. Herencia + super
# Crea Empleado con:
# - nombre
# - salario
# Crea Gerente < Empleado y agrega:
# - departamento
# Utiliza super desde Gerente#initialize.

# 33. Polimorfismo / Duck Typing
# Crea:
# - Perro
# - Gato
# - Vaca
# Cada uno debe tener hacer_sonido.
# Crea un método que reciba cualquier objeto y llame a hacer_sonido.


# BLOQUE 8 — EXCEPCIONES
# ======================

# 34. División segura
# Pide dos números y controla:
# - división por cero
# - entrada inválida
# Utiliza begin/rescue.

# 35. Retiro bancario seguro
# Utiliza CuentaBancaria.
# Genera un error cuando:
# - el monto sea negativo
# - el saldo sea insuficiente
# Captura el error desde fuera de la clase.


# PROYECTO 1 — AGENDA DE CONTACTOS
# =================================

# Primera versión: procedural.

# Utiliza:
# - Array
# - Hash
# - loop
# - case
# - each
# - gets

# Menú:
# 1. Agregar contacto
# 2. Mostrar contactos
# 3. Buscar contacto
# 4. Eliminar contacto
# 5. Salir

# Cada contacto puede ser:
# {
#   nombre: "Camilo",
#   telefono: "3000000000"
# }

# Segunda versión: POO.

# Crea las clases:
# - Contacto
# - Agenda

# Contacto se encarga de sus propios datos.
# Agenda se encarga de:
# - agregar
# - buscar
# - eliminar
# - mostrar

# La idea es transformar el mismo proyecto procedural en una solución
# orientada a objetos.


# PROYECTO 2 — SISTEMA DE PARQUEADERO
# ====================================

# Crea una aplicación de consola.

# Clases:
# - Cliente
# - Vehiculo
# - Tarifa
# - Parqueadero

# Cliente:
# - nombre
# - documento
# - telefono

# Vehiculo:
# - placa
# - tipo
# - marca

# Tarifa:
# Por ejemplo:
# - carro -> $3000/hora
# - moto -> $1500/hora

# Parqueadero:
# 1. Registrar entrada
# 2. Registrar salida
# 3. Mostrar vehículos
# 4. Buscar vehículo
# 5. Mostrar tarifa
# 6. Salir

# Cuando un vehículo entra:
# - placa
# - tipo
# - hora de entrada

# Cuando sale:
# - placa
# - hora de salida
# - calcular cuánto debe pagar


# CRITERIO PARA PASAR A RAILS
# ===========================

# No es necesario dominar absolutamente todo Ruby.

# La meta es poder resolver los ejercicios sin copiar tutoriales y,
# sobre todo, poder construir los dos proyectos entendiendo:

# Objeto
#   -> estado
#   -> métodos
#   -> objetos que colaboran
#   -> datos
#   -> CRUD

# Cuando puedas construir el parqueadero por tu cuenta (consultando la
# documentación cuando olvides algún método), ya tendrás una base adecuada
# para comenzar Ruby on Rails.

# Threads no se consideran requisito para empezar Rails.



## BLOQUE 1 - FUNDAMENTOS

# Ejercicio 1

# puts "Dame dos numeros para realizar las 4 operaciones aritmeticas"
# puts "Escribe el primero"
# num1 = gets.chomp.to_f
# puts "Escribe el segundo"
# num2 = gets.chomp.to_f

# suma = num1 + num2
# resta = num1 - num2
# multiplicacion = num1 * num2
# division = num1 / num2
# residuo = num1 % num2

# resultados = "suma: #{suma}\n" + "resta: #{resta}\n" + "producto: #{multiplicacion}\n" + "Division: #{division}\n" + "residuo: #{residuo}"
# puts "Los resultados son:\n" + resultados

##Funciona con enteros y flotantes, pero los resultados no son flotantes

# Ejercicio 2

# puts "Regaleme sus datos por favor"
# puts "Por valor ingresa nombre"
# nombre = gets.chomp
# puts "Ingresa edad"
# edad = gets.chomp.to_i
# puts "Ingresa ciudad"
# ciudad = gets.chomp

# puts "Buenos dias #{nombre}, tienes #{edad} años y eres de la hermosa ciudad de #{ciudad}"

# Ejercicio 3

# puts "Por favor ingresatu edad:"
# edad = gets.chomp.to_i

# if edad < 18
#   puts "Eres menor de 18 años"
# elsif edad == 18
#   puts "Tienes exactamente 18 años"
# else
#   puts "Eres mayor de edad!"
# end

# Ejericio 4

# puts "Ingrese un numero"
# numero = gets.chomp.to_i

# if numero < 0
#   puts "Tu numero negativo"
# elsif numero == 0
#   puts "Tu numero es cero"
# else
#   puts "Tu numero es positivo"
# end

# Ejericio 5

# puts "Hola bienvenido al menu de opciones"
# puts "Opciones:
# 1. Saludar
# 2. Mostar fecha
# 3. Mostrar mensaje
# 4. Salir"
# puts "Selecciona una opción"
# opcion = gets.chomp.to_i

# case opcion
# when 1
#   puts "Hola buenos dias"
# when 2
#   puts "El dia de hoy es 23 de agosto"
# when 3
#   puts "Prometa y prometa hasta que lo me.."
# when 4
#   puts "SALIENDO!"
# else
#   puts "Opcion invalida"
# end


## BLOQUE 2 - METODOS

## Ejercicio 6

# def saludar(nombre)
#   "Hola #{nombre}"
# end

# puts saludar("Camilo")

## Ejercicio 7

# def sumar(a, b)
#   a + b
# end
# def restar(a, b)
#   a - b
# end
# def multiplicar(a, b)
#   a * b
# end
# def dividir(a, b)
#   a / b
# end

# puts sumar(1,4)

# Ejercicio 8

# def mayor_de_edad?(edad)
#   edad >= 18
# end

# puts mayor_de_edad?(99)

# Ejercicio 9

# def celsius_a_farenheit(temperatura_celcius)
#   (temperatura_celcius * 1.8) + 32.0
# end

# def farenheit_a_celsius(temperatura_farenheit)
#   (temperatura_farenheit - 32.0) / 1.8
# end

# puts "Ingrese la opcion de conversion correspondiente"
# puts "1. Temperatura Celcius a Farenheit
# 2. Temperatura Farenheit a Celcius"
# opcion = gets.chomp.to_i
# puts "Ahora ingrese la temperatura a convertir:"
# temp = gets.chomp.to_f



# if opcion == 1
#   puts "La conversion de #{temp}°C a Farenteheit es igual a: #{celsius_a_farenheit(temp)}"
# elsif opcion == 2
#   puts "La conversiom de #{temp}Farenteheit a °C es igual a: " + farenheit_a_celsius(temp).to_s
# else
#   puts "Ingrese una opción valida"
# end

## BLOQUE 3 - ARRAYS

# Ejericio 10

# videojuegos = ["LOL", "FIFA", "Metro 2077", "Minecraft", "Fortnite"]

# puts videojuegos.first
# puts videojuegos.last
# puts videojuegos.length
# puts videojuegos[3]

# # Ejercicio 11

# videojuegos << "Dota 2"
# videojuegos.push("Mario Kart")
# videojuegos.unshift("Halo 2")

# puts "Estos son los videojuegos: #{videojuegos} actuales"

# eliminado = videojuegos.shift
# puts "Eliminaste el juego #{eliminado}"
# eliminado2 = videojuegos.pop
# puts "Eliminaste el juego #{eliminado2}"

# puts "Estos son los videojuegos: #{videojuegos} actuales despues de las modificaciones"
# eliminado3 = videojuegos.delete_at(2)
# print videojuegos

# Ejercicio 12
# videojuegos = ["LOL", "FIFA", "Metro 2077", "Minecraft", "Fortnite"]

# videojuegos.each do |juego|
#   puts juego
# end

# Ejercicio 13

# productos = ["Mouse", "Teclado", "Monitor", "Audifonos"]

# productos.each_with_index do |producto, index|
#   puts "#{index} - #{producto}"
# end

# productos.each_index do |index|
#   puts "#{index} - " + productos[index]
# end

# Ejericio 14

# numeros = [1.2, 2, 3, 4, 55, 6, 20, 10]
# suma = 0
# maximo = numeros[0]
# minimo = numeros[0]
# numeros.each do |i|
#   if maximo > i
#     maximo
#   else
#     maximo = i
#   end
#   if minimo < i
#     minimo
#   else
#     minimo = i
#   end
#   suma += i
# end
# promedio = suma / numeros.length
# max = numeros.max
# min = numeros.min
# puts "La suma es #{suma}"
# puts "El promedio es #{promedio}"
# puts max
# puts maximo
# puts min
# puts minimo

# Ejericio 15

# array = [1, 2, 3, 4, 5, 6]
# dropeado = array.drop(5)
# print dropeado
# print array
# rebanada = array.slice(1,3)
# print rebanada
# print array
# limpiada = array.clear
# print array
# print limpiada

# BLOQUE 4 — HASHES Y SYMBOLS

# Ejericio 16

# contactos = { nombre: "Camilo", telefono: "3106959651", ciudad: "Bogotá" }

# puts contactos[:nombre]
# puts contactos[:telefono]
# puts contactos[:ciudad]

# Ejericio 17

# contactos = { nombre: "Camilo", telefono: "3106959651", ciudad: "Bogotá" }

# contactos[:nombre] = "Andres"
# contactos[:telefono] = 3106459342
# contactos[:ciudad] = "Ibagué"
# contactos[:departamento] = "Tolima"

# puts contactos

# Ejericio 18

# productos = { leche: 2000, huevos: 4000, lentejas: 5000, atun: 9000 }
# productos.each do |producto, precio|
#   puts "Producto: #{producto} - Precio: #{precio}"
# end

# Ejericio 19

# usuarios = { nombre: "Camilo" }
# if usuarios.has_key?(:nombre)
#   puts "Existe"
# else
#   puts "No existe"
# end

# Ejericio 20

# videojuegos1 = { juego: "Minecraft", duracion: 2}
# videojuegos2 = { competencia: "Roblox", plataformas: "Multiplataforma" }

# videojuegos = videojuegos1.merge(videojuegos2)
# puts videojuegos
# puts videojuegos1
# puts videojuegos2

# puts "Diferencia"
# videojuegos = videojuegos1.merge!(videojuegos2)
# puts videojuegos
# puts videojuegos1
# puts videojuegos2

# BLOQUE 5 — CICLOS Y BLOQUES

# Ejericio 21

# puts "Ingresa un numero hasta donde contar"
# numeros = gets.chomp.to_i
# numeros += 1
# numeros.times do |index|
#   puts index
# end

# Ejericio 22

# numero_ingresado = 0
# numero_secreto = 4
# intentos = 5

# loop do
#   puts "Ingresa un numero para adivinar el numero secreto"
#   numero_ingresado = gets.chomp.to_i
#   if numero_ingresado == numero_secreto
#     puts "Adivinaste!"
#     break
#   else
#     if numero_ingresado > numero_secreto
#       puts "Pista, el numero secreto es menor..."
#     else
#       puts "Pista, el numero secreto es mayor..."
#     end
#     intentos -= 1
#     puts "Incorrecto, te quedan #{intentos} intentos"
#   end
#   if intentos < 1
#     puts "No te quedan intentos, pailas perdiste"
#     break
#   end
# end

# Ejercicio 23

# loop do
#   puts "Bienvenido al menu:
#   1. Mostrar saldo
#   2. Depositar
#   3. Retirar
#   4. Salir"
#   puts "Elige una opcion"
#   option = gets.chomp.to_i
#   if option == 4
#     puts "Saliendo..."
#     break
#   end
# end

# Ejericio 24

# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# array.each do |num|
#   next if num % 2 != 0
#   puts num
# end

# BLOQUE 6 — POO BÁSICA

# Ejercicio 25

# class Persona
#   def presentarse
#     puts "Hola, mi nombre es #{@nombre} y tengo #{@edad} años"
#   end
# end
# p1 = Persona.new
# p2 = Persona.new
# p3 = Persona.new

# p1.presentarse
# p2.presentarse
# p3.presentarse

# Ejericicio 26

# class Persona
#   def initialize(nombre, edad, ciudad)
#     @nombre = nombre
#     @edad = edad
#     @ciudad = ciudad
#   end

#   def presentarse
#     puts "Hola, mi nombre es #{@nombre}, tengo #{@edad} años y soy de #{@ciudad}"
#   end
# end

# persona1 = Persona.new("Camilo", 18, "Ibague")
# persona2 = Persona.new("Carlos", 12, "Bogota")
# persona3 = Persona.new("Andres", 23, "Cali")


# persona1.presentarse
# persona2.presentarse
# persona3.presentarse

# Ejercicio 27

# class Persona
#   attr_reader :nombre
#   attr_accessor :edad, :ciudad

#   def initialize(nombre, edad, ciudad)
#     @nombre = nombre
#     @edad = edad
#     @ciudad = ciudad
#   end

#   def presentarse
#     puts "Hola, mi nombre es #{@nombre}, tengo #{@edad} años y soy de #{@ciudad}"
#   end
# end

# p1 = Persona.new("Camilo", 18, "Ibague")
# puts p1.nombre
# #p1.nombre = "Andres" # Aqui sale un error
# p1.edad = 19
# puts p1.edad
# p1.ciudad = "Bogotá"
# puts p1.ciudad

# Ejercicio 28

# class CuentaBancaria
#   attr_accessor :titular

#   def initialize(titular, saldo)
#     @titular = titular
#     @saldo = saldo
#   end

#   def depositar(deposito)
#     @saldo += deposito
#   end

#   def retirar(retiro)
#     if @saldo >= retiro
#       @saldo -= retiro
#     else
#       puts "Fondos insuficientes"
#     end
#   end

#   def mostrar_saldo
#     @saldo
#   end
# end

# c1 = CuentaBancaria.new("Camilo", 20000)
# puts c1.mostrar_saldo
# c1.depositar(20000)
# puts c1.mostrar_saldo
# c1.retirar(1000)
# puts c1.mostrar_saldo

# Ejercicio 29

# class Producto
#   attr_reader :nombre,:precio,:cantidad
#   def initialize(nombre, precio, cantidad)
#     @nombre = nombre
#     @precio = precio
#     @cantidad = cantidad
#   end

#   def valor_total
#     @precio * @cantidad
#   end

#   def aumentar_stock(num_aumento)
#     @cantidad += num_aumento
#   end

#   def disminuir_stock(num_disminuye)
#     @cantidad -= num_disminuye
#   end
# end

# p1 = Producto.new("Leche", 5000, 5)
# puts p1.nombre
# puts p1.precio
# puts p1.cantidad
# puts p1.valor_total

# p1.aumentar_stock(10)
# puts p1.cantidad
# puts p1.valor_total

# p1.disminuir_stock(5)
# puts p1.cantidad
# puts p1.valor_total

# Ejercicio 30

# class Perro
#   def initialize(nombre, raza, edad)
#     @nombre = nombre
#     @raza = raza
#     @edad = edad
#   end

#   def to_s
#     "El perro se llama #{@nombre}, es de raza #{@raza} y tiene #{@edad} años de edad!"
#   end
# end

# perro = Perro.new("Lucas", "Pastor Aleman", 5)

# puts perro

# Ejercicio 31

# class Animal
#   attr_reader :nombre

#   def initialize(nombre)
#     @nombre = nombre
#   end
#   def comer
#     "Estoy comiendo..."
#   end
#   def dormir
#     "Estoy durmiendo... zzzzz....zzzzz"
#   end
#   def hacer_sonido
#   end
# end

# class Perro < Animal
#   def hacer_sonido
#     "GUAU GUAU GUAU....."
#   end
# end

# class Gato < Animal
#   def hacer_sonido
#     "MIAU... MIAU.."
#   end
# end

# perro = Perro.new("Lucas")
# gato = Gato.new("Luci")

# puts perro.nombre
# puts perro.comer
# puts perro.dormir
# puts perro.hacer_sonido

# puts gato.nombre
# puts gato.comer
# puts gato.dormir
# puts gato.hacer_sonido

# Ejericio 32

# class Empleado
#   attr_reader :nombre, :salario

#   def initialize(nombre, salario)
#     @nombre = nombre
#     @salario = salario
#   end
# end


# class Gerente < Empleado
#   attr_reader :departamento

#   def initialize(nombre, salario, departamento)
#     super(nombre, salario)
#     @departamento = departamento
#   end
# end

# gerente = Gerente.new("Carlos", 2000000, "Contabilidad")
# puts gerente.nombre
# puts gerente.salario
# puts gerente.departamento

# Ejercicio 33

# class Perro
#   def hacer_sonido
#     "GUAU!"
#   end
# end

# class Gato
#   def hacer_sonido
#     "MIAU!"
#   end
# end

# class Vaca
#   def hacer_sonido
#     "MUUU!"
#   end
# end

# def emitir_sonido(objeto)
#   objeto.hacer_sonido
# end

# perro = Perro.new
# gato = Gato.new
# vaca = Vaca.new

# puts emitir_sonido(perro)
# puts emitir_sonido(gato)
# puts emitir_sonido(vaca)

# Ejercicio 34

# begin
#   puts "Hola escribe 2 numeros para dividir"
#   puts "Escribe el numero dividendo"
#   num1 = Float(gets.chomp)
#   puts "Ahora escribe el divisor"
#   num2 = Float(gets.chomp)
#   raise ZeroDivisionError if num2 == 0
#   resultado = num1 / num2
#   puts "El resultado es #{resultado}"
# rescue ArgumentError
#   puts "Entrada invalida, no ingrese letras"
# rescue ZeroDivisionError
#   puts "No se puede divir por cero"
# end

# Ejercicio 35

# class MontoNegativo < StandardError
# end

# class SaldoInsuficiente < StandardError
# end

# class CuentaBancaria
#   def initialize(nombre, saldo)
#     @nombre = nombre
#     @saldo = saldo
#   end

#   def retiro(monto)
#     raise MontoNegativo if monto < 0
#     raise SaldoInsuficiente if monto > @saldo
#     @saldo -= monto
#   end
# end

# begin
#   cuenta = CuentaBancaria.new("Billetera", 2000)
#   a = cuenta.retiro(-2001)
#   puts "Te quedan #{a}"
# rescue MontoNegativo
#   puts "Ingrese un monto positivo"
# rescue SaldoInsuficiente
#   puts "No tiene saldo"
# end


################ PROYECTO 1 ####################

# FORMA PROCEDURAL

# contactos = []

# loop do
#   puts "Hola selecciona una opcion del siguiente menu:
#   1. Agregar contacto
#   2. Mostrar contactos
#   3. Buscar contacto
#   4. Eliminar contacto
#   5. Salir"
#   puts "Ingrese la opcion"
#   option = gets.chomp.to_i
#   case option
#   when 1
#     puts "Ingrese el nombre"
#     nombre = gets.chomp
#     puts "Ingrese el numero del contacto"
#     numero = gets.chomp
#     contacto_nuevo = { nombre: nombre, numero: numero }
#     contactos << contacto_nuevo
#   when 2
#     puts "Contactos actuales:"
#     contactos.each do |contacto|
#       puts "Nombre: #{contacto[:nombre]} - Numero: #{contacto[:numero]}"
#     end
#   when 3
#     puts "Ingrese el nombre completo"
#     contacto_a_buscar = gets.chomp
#     puts "Buscando...
#     Buscando...
#     Buscando..."
#     encontrado = false
#     contactos.each do |contacto|
#       if contacto_a_buscar == contacto[:nombre]
#         puts "contacto encontrado, este es su nombre y numero
#         Nombre: #{contacto[:nombre]} - Numero: #{contacto[:numero]}"
#         encontrado = true
#       end
#     end
#     unless encontrado
#       puts "Usuario no encontrado"
#     end
#   when 4
#     puts "Escribe el nombre completo del contacto a eliminar"
#     contacto_a_eliminar = gets.chomp
#     eliminar = false
#     contactos.each_with_index do |contacto, index|
#       if contacto_a_eliminar == contacto[:nombre]
#         contactos.delete_at(index)
#         puts "Contacto correctamente eliminado"
#         eliminar = true
#       end
#     end
#     unless eliminar
#       puts "Contacto a eliminar no encontrado"
#     end

#   when 5
#     puts "SALIENDO..............."
#     break
#   else
#     puts "Entrada invalida"
#   end
# end

# FORMA POO

# class Contacto
#   attr_reader :nombre, :telefono

#   def initialize(nombre, telefono)
#     @nombre = nombre
#     @telefono = telefono
#   end
#   def to_s
#     "Nombre: #{@nombre} - Telefono: #{@telefono}"
#   end
# end

# class Agenda
#   attr_reader :contactos

#   def initialize
#      @contactos = []
#   end
#   def agregar_contacto(contacto)
#     @contactos.push(contacto)
#     puts "Contacto #{contacto.nombre} agregado con exito"
#   end
#   def mostrar_contactos
#     puts "Lista de contactos:"
#     @contactos.each do |contacto|
#       puts contacto
#     end
#   end
#   def buscar_contacto(nombre)
#     encontrado = false
#     puts "BUSCANDO...BUSCANDO..BUSCANDO.."
#     @contactos.each do |contacto|
#       if nombre == contacto.nombre
#         puts "Econtrado... Sus datos son: Nombre: #{contacto.nombre} y telefono: #{contacto.telefono}"
#         encontrado = true
#       end
#     end
#     unless encontrado
#       puts "Usuario no existe"
#     end
#   end
#   def eliminar_contacto(nombre)
#     encontrado = false
#     @contactos.each do |contacto|
#       if contacto.nombre == nombre
#         @contactos.delete(contacto)
#         puts "Contacto eliminado"
#         encontrado = true
#       end
#     end
#     unless encontrado
#       puts "Contacto a eliminar no existe"
#     end
#   end
# end
# agenda = Agenda.new

# loop do
#   puts "Hola selecciona una opcion del siguiente menu:
#   1. Agregar contacto
#   2. Mostrar contactos
#   3. Buscar contacto
#   4. Eliminar contacto
#   5. Salir"
#   puts "Ingrese la opcion"
#   option = gets.chomp.to_i
#   case option
#   when 1
#     puts "Ingrese el nombre"
#     nombre = gets.chomp
#     puts "Ingrese el numero del contacto"
#     numero = gets.chomp
#     contacto_nuevo = Contacto.new(nombre,numero)
#     puts contacto_nuevo
#     agenda.agregar_contacto(contacto_nuevo)
#     p agenda
#   when 2
#     p agenda.mostrar_contactos
#   when 3
#     puts "Ingrese el nombre completo"
#     contacto_a_buscar = gets.chomp
#     agenda.buscar_contacto(contacto_a_buscar)
#   when 4
#     puts "Escribe el nombre completo del contacto a eliminar"
#     contacto_a_eliminar = gets.chomp
#     agenda.eliminar_contacto(contacto_a_eliminar)
#   when 5
#     puts "SALIENDO..............."
#     break
#   else
#     puts "Entrada invalida"
#   end
# end


# PROYECTO 2
####### EL PROYECTO 2 LO VOY A CONTIUNUAR APARTE #######
