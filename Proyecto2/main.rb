require './parqueadero'
require 'time'
parqueadero = Parqueadero.new
loop do
  puts "Ingrese una opcion
  1. Registrar entrada
  2. Registrar salida
  3. Mostrar vehículos
  4. Buscar vehículo
  5. Mostrar tarifas
  6. Salir"
  puts "Ingrese la opcion:"
  option = gets.chomp.to_i
  case option
  when 1
    puts "Por favor ingrese los datos del vehiculo"
    puts "Nombre:"
    nombre = gets.chomp
    puts "Documento:"
    documento = gets.chomp
    puts "Telefono:"
    telefono = gets.chomp
    cliente = Cliente.new(nombre, documento, telefono)
    p cliente
    puts "Ahora ingrese los datos del vehiculo separados entre comas"
    puts "placa, tipo, marca"
    hora_entrada = Time.now
    argumentos = gets.chomp.split(',').map(&:strip)
    p argumentos
    vehiculo = Vehiculo.new(argumentos[0], argumentos[1], argumentos[2], cliente, hora_entrada)
    p vehiculo
    parqueadero.registrar_entrada(vehiculo)

  when 2
    puts "Ingrese la placa"
    placa = gets.chomp
    parqueadero.registrar_salida(placa)
  when 3
    parqueadero.mostrar_vehiculos
  when 4
    puts "Ingrese la placa a buscar"
    placa_a_buscar = gets.chomp
    parqueadero.buscar_vehiculo(placa_a_buscar)
  when 5
    puts Tarifa.mostrar_tarifas
  when 6
    puts "SAlIENDO........"
    break
  end
end




##LAs opciones ya es hora de manejarlas como objetos?
