class Tarifa

  TARIFA_BICICLETA = 1000
  TARIFA_MOTOCARRO = 2000
  TARIFA_CARRO = 3000
  TARIFA_MOTO = 2000
  TARIFA_CAMIONETA = 5000

  def self.mostrar_tarifas
    mensaje = "LAS TARIFAS SON:\n"
    mensaje += "Bicicleta: " + TARIFA_BICICLETA.to_s
    mensaje += "\nMotocarro: " + TARIFA_MOTOCARRO.to_s
    mensaje += "\nCarro: " + TARIFA_CARRO.to_s
    mensaje += "\nMoto: " + TARIFA_MOTO.to_s
    mensaje += "\nCamioneta: " + TARIFA_CAMIONETA.to_s
  end
  def self.total_a_pagar(tiempo_estacionado, clase)
    case clase
    when "bicicleta"
      valor_total = TARIFA_BICICLETA * tiempo_estacionado
    when "motocarro"
      valor_total = TARIFA_MOTOCARRO * tiempo_estacionado
    when "carro"
      valor_total = TARIFA_CARRO * tiempo_estacionado
    when "camioneta"
      valor_total = TARIFA_CAMIONETA * tiempo_estacionado
    else
      puts "Clase de vehiculo incorrecta o inexistente, por favor intente de nuevo"
      false
    end
  end
end
