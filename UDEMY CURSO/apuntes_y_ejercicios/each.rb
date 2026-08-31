num_array = [1, 2, 3, 4, 5]

num_array.each do |num|
  puts num
end

contact_hash = {"Camilo": 12345, "Andres": 6777, "Ana": 6666 }

contact_hash.each do |k, v|
  puts "El nombre es #{k} y el numero es #{v}"
end

contact_hash.each_key do |k|
  puts "La llave es #{k}"
end


contact_hash.each_value do |v|
  puts "El valor es #{v}"
end
