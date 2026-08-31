require './cliente'
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





