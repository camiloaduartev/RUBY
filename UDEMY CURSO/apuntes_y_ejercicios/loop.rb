# a = 0

# loop{
# puts "Esto es un ciclo"
# a+=1
# if a == 10
#   break
# end
# }

loop do
  print "Quieres salir del ciclo? (si/no): "
  respuesta = gets.chomp
  if respuesta == "si"
    break
  end
  puts "Sigamos jugando"
end




