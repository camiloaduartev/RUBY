class Perro

  attr_accessor :color, :raza, :edad

  def initialize(raza, color, edad)
    @raza = raza
    @color = color
    @edad = edad
  end

  def ladrar(ladrido)
    puts "#{ladrido} #{ladrido} #{ladrido} "
  end

  def to_s
    puts "Soy un perro de raza #{@raza} de color #{@color} y tengo #{@edad} años"
  end
  
end

perro = Perro.new("Pastor Aleman", "Cafe", 5)

puts perro.raza
puts perro.color
puts perro.edad
