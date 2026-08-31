def saludar(nombre, saludo)
  puts "Hola #{nombre}, que tengas #{saludo}"
end

#print "Introduce tu nombre: "
#nombre = gets.chomp


#saludar(nombre, "buenas tardes")

def suma(num1, num2)
  suma = num1 + num2
  return suma
end

def resta(num1, num2)
  resta = num1 - num2
  return resta
end

a = 1
b = 2

resultado = suma(a,b)
resultado1 = resta(a,b)

  puts "La suma de #{a} y #{b} es #{resultado} y la resta es #{resultado1}"