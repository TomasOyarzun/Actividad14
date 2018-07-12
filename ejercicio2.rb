
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

#Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método .select.
#Utilizando .map crear una arreglo con los nombres en minúscula.
#Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.
#Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.
#Utilizando .map y .gsub eliminar las vocales de todos los nombres.

print nombres.select { |n| n.length < 5 }
puts "\n"
print nombres.map {|x| x.downcase}
puts "\n"
print nombres.select { |n| n.start_with?('P') }
puts "\n"
print nombres.map {|x| x.length}
puts "\n"
print nombres.map { |n| n.gsub(/[aeiou]/, '')}
