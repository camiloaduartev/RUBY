require 'time'
require './vehiculo'
require './tarifa'

class Parqueadero
  attr_reader :parqueadero

  def initialize
    @parqueadero = []
  end
  def registrar_entrada(vehiculo)
    registrado = false
    @parqueadero.each do |v|
      if vehiculo.placa == v.placa
        registrado = true
      end
    end
    if registrado
      puts "El vehiculo ya esta registrado, intente con otra placa"
    else
      @parqueadero.push(vehiculo)
      puts "Cliente registrado con exito"
    end
  end
  def registrar_salida(placa)
    encontrado = false
    @parqueadero.each do |vehiculo|
      if vehiculo.placa == placa
        puts "El vehiculo se encuntra dentro del parqueadero"
        hora_de_salida = Time.now
        tiempo_estacionado = (hora_de_salida - vehiculo.hora_entrada)/3600
        clase = vehiculo.tipo
        puts "Duró #{tiempo_estacionado} horas estacionado"
        total = Tarifa.total_a_pagar(tiempo_estacionado, clase)
        if total == false
          puts "Solucionar primero el tema del tipo de vehiculo"
        else if total < 0
          puts "El calculo de las horas es incorrecto"
        else
          puts "El valor a pagar es de #{total}"
          @parqueadero.delete(vehiculo)
        end
        encontrado = true
        break
      end
    end
    unless encontrado
      puts "Placa incorrecta o el vehiculo no se encuentra en el parqueadero actualmente..."
    end
  end
  def mostrar_vehiculos
    if @parqueadero.any?
      @parqueadero.each do |vehiculo|
        puts "Placa: #{vehiculo.placa} - Hora ingreo: #{vehiculo.hora_entrada}"
      end
    else
      puts "No hay vehiculos en este momento"
    end
  end
  def buscar_vehiculo(placa_a_buscar)
    encontrado = false
    @parqueadero.each do |vehiculo|
      if vehiculo.placa == placa_a_buscar
        puts "Vehiculo encontrado...."
        puts "El vehiculo de placa #{vehiculo.placa} ingresó a las #{vehiculo.hora_entrada} y el dueño es #{vehiculo.cliente.nombre}"
        encontrado = true
        break
      end
    end
    unless encontrado
      puts "Placa incorrecta o el vehiculo no se encuentra en el parqueadero actualmente..."
    end
  end
end

