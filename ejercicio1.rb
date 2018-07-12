a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
#Utilizando map generar un nuevo arreglo con cada valor aumentado en 1.
#Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a float.
#Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a string.
#Utilizando reject descartar todos los elementos menores a 5 en el array.
#Utilizando select descartar todos los elementos mayores a 5 en el array.
#Utilizando inject obtener la suma de todos los elementos del array.
#Utilizando group_by agrupar todos los números por paridad (si son pares, es un grupos, si son impares es otro grupo).
#Utilizando group_by agrupar todos los números mayores y menores que 6.

print a.map {|x| x + 1}
puts "\n"
print a.map {|x| x.to_f}
puts "\n"
print a.map {|x| x.to_s}
puts "\n"
print a.reject { |n| n < 5 }
puts "\n"
print a.select { |n| n <= 5 }
puts "\n"
print a.inject(0) { |sum, e| sum + e }
puts "\n"
print a.group_by {|i| i.even?}
puts "\n"
print a.group_by {|i| i < 6}
