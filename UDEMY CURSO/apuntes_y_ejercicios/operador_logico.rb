print "Digame su calificación: "
calificacion = gets.chomp.to_i

def evaluar(calificacion)
  
  if calificacion == 0 || calificacion == 1
    print "No estudió nada, VAGO"
  elsif calificacion > 1 && calificacion < 7
    print "Reprobado, estudie más"
  elsif calificacion == 7 || calificacion == 8
    print "Pasaste de milagro"
  elsif calificacion == 9
    print "Le fue bien"
  elsif calificacion == 10
    print "Le fue excelente, saco 10.0"
  else
    print "Esa calificació no es valida"
  end
end

evaluar(calificacion)