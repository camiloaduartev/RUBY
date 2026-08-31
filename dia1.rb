####EJERCICIO 1

# nombre = "Camilo"
# edad = 25
# lenguaje = "ruby"
# activo = true

# puts nombre.class 
# puts edad.class
# puts lenguaje.class
# puts activo.class

####EJERCICIO 2

# nombre = "Camilo Andres Duarte Varon"

# puts nombre.upcase
# puts nombre.downcase
# puts nombre.reverse
# puts nombre.length
# puts nombre.include?("Ruby")
# puts "  hola mundo  ".strip
# puts"hola mundo".gsub("mundo","ruby")
# puts"#{nombre} esta aprendiendo ruby)

####EJERCICIO 3

# frutas = ["manzana", "pera", "uva", "kiwi", "fresa"]

# puts frutas.length
# puts frutas.first
# puts frutas.last
# p frutas.sort
# p frutas.reverse
# puts frutas.include?("uva")

# frutas << "mango"

# p frutas

# frutas.delete("pera")
# p frutas


# frutas.each do |fruta|
#   puts "Me gusta la #{fruta} y yo"
# end

# mayusculas = frutas.map { |fruta| fruta.upcase }
# puts mayusculas
  
####EJERCICIO 4

# persona = {
#   nombre: "Camilo Andres Duarte",
#   edad: 25,
#   ciudad: "Ibague",
#   lenguaje: "Ruby"
# }

# puts persona[:nombre]
# puts persona[:edad]
# puts persona[:ciudad]

# persona[:pais] = "Colombia"
# persona[:edad] = 26

# puts persona.keys
# puts persona.values
# puts persona.length
# puts persona.has_key?(:nombre)
# puts persona.has_value?("Python")

# persona.each do |k, v|
#   puts "#{k}: #{v}"
# end

####EJERCICIO 5

usuarios = [
  { nombre: "Carlos", edad: 28, ciudad: "Bogotá" },
  { nombre: "Ana",    edad: 32, ciudad: "Medellín" },
  { nombre: "Luis",   edad: 25, ciudad: "Cali" },
  { nombre: "Sara",   edad: 19, ciudad: "Cartagena" }
]

# Recorrer todos los usuarios
usuarios.each do |usuario|
  puts "#{usuario[:nombre]} tiene #{usuario[:edad]} años y vive en #{usuario[:ciudad]}"
end

puts "---"

# Mostrar solo los mayores de 26
mayores = usuarios.select { |u| u[:edad] > 26 }
mayores.each do |u|
  puts "#{u[:nombre]} es mayor de 26"
end

puts "---"

# Mostrar solo los nombres en mayúsculas
nombres = usuarios.map { |u| u[:nombre].upcase }
puts nombres

puts "---"

# Edad promedio
total = usuarios.map { |u| u[:edad] }.sum
promedio = total / usuarios.length
puts "Edad promedio: #{promedio}"