class Cliente
  attr_reader :nombre
  def initialize(nombre, documento, telefono)
    @nombre = nombre
    @documento = documento
    @telefono = telefono
  end
end