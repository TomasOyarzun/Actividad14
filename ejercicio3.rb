#Crear un menú que permita registrar la información de los alumnos del curso.
#Opción 1: Permite ingresar los datos de una persona
#Nombre
#Edad
#Comuna
#Género
#Opción 2: Permite editar los datos de la persona
#Opción 3: Permite eliminar una persona
#Opción 4: Muestra la cantidad de personas ingresadas
#Opción 5: Muestra las comunas de todas las personas
#hint: Generar un array con las comunas, eliminar repeticiones. Considerar que pueden haber nombres escritos con mayúscula y minúscula
#Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años
#Opción 7: Muestra la suma de las edades de todas las personas
#Opción 8: Muestra el promedio de las edades del grupo.
#Opción 9: Muestra dos listas de personas, una por cada género.
#El menú debe repetirse hasta que el usuario ingrese la opción 10 (salir).

personas = {
  'renato' => {
    edad: 36,
    comuna: 'providencia',
    genero: 'hombre'
  },
  'choli' => {
      edad: 23,
      comuna: 'providencia',
      genero: 'mujer'
  },
  'cholo' => {
      edad: 13,
      comuna: 'providencia',
      genero: 'hombre'
  },
  'renata' => {
    edad: 46,
    comuna: 'santiago',
    genero: 'mujer'
  }
}


    puts '           MENU         '
    puts '1. Ingresa los datos de una persona'
    puts '2. Edita los datos de una persona'
    puts '3. Elimina a una persona'
    puts '4. Ve la cantidad de personas ingresadas'
    puts '5. Ve las comunas de las personas'
    puts '6. Ve que personas tienen entre 20 y 25 años'
    puts '7. Ve la suma de las edades de todos'
    puts '8. Ve el promedio de las edades '
    puts '9. Ve dos listas de personas por su género'
    puts '10. Salir'

option = gets.chomp.to_i
  while option != 10
    case option
    when 1
      print 'ingresa el nombre'
      puts "\n"
      nombre = gets.chomp
      print 'ingresa la edad '
      puts "\n"
      edad = gets.chomp
      print 'ingresa la comuna '
      puts "\n"
      comuna = gets.chomp
      print 'ingresa el genero '
      puts "\n"
      genero = gets.chomp
      personas[nombre] = "{'edad' => #{edad}, 'comuna' => #{comuna}, 'genero' => #{genero}}"
      print personas
    when 2
      print 'Que persona deseas actualizar '
      puts "\n"
      nombre_nuevo = gets.chomp
      print 'que dato deseas editar '
      que_dato = gets.chomp
      if que_dato == 'edad'
        puts ' ingresa la nueva edad '
        dato_nuevo = gets.chomp
        personas[nombre_nuevo][:edad] = dato_nuevo
      end
      if que_dato == 'comuna'
        puts ' ingresa la nueva comuna '
        dato_nuevo = gets.chomp
        personas[nombre_nuevo][:comuna] = dato_nuevo
      end
      if que_dato == 'genero'
        puts ' ingresa genero'
        dato_nuevo = gets.chomp
        personas[nombre_nuevo][:genero] = dato_nuevo
      end
      print personas
    when 3
      print 'a que persona deseas eliminar(nombre) '
      puts "\n"
      borrar = gets.chomp
      personas.delete(borrar)
      print personas
    when 4
      puts "La cantidad de personas es #{personas.length}"
    when 5
      x = personas.map{|v| v[1][:comuna]}
      print x

    when 6
      puts personas.select { |k, v| v[:edad] > 20 && v[:edad] < 25 }

    when 7
      a = personas.map {|v| v[1][:edad]}
      print a.inject(0){|sum,e| sum + e}

    when 8
      a = personas.map {|v| v[1][:edad]}
      print a.inject(0){|sum,e| sum + e} / a.length

    when 9
      print personas.sort_by {|v| v[1][:genero]}
    else
      puts 'hola'
    end
    puts '           MENU         '
    puts '1. Ingresa los datos de una persona'
    puts '2. Edita los datos de una persona'
    puts '3. Elimina a una persona'
    puts '4. Ve la cantidad de personas ingresadas'
    puts '5. Ve las comunas de las personas'
    puts '6. Ve que personas tienen entre 20 y 25 años'
    puts '7. Ve la suma de las edades de todos'
    puts '8. Ve el promedio de las edades '
    puts '9. Ve dos listas de personas por su género'
    puts '10. Salir'
    option = gets.chomp.to_i
end
