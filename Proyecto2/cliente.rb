class Cliente
  attr_reader :nombre, :documento, :telefono
  def initialize(nombre, documento, telefono)
    @nombre = nombre
    @documento = documento
    @telefono = telefono
  end
end
