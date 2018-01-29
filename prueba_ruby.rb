def read_alum(file_name)
  file = File.open(file_name, 'r')
  alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
  file.close
  alum
end
notas = read_alum('alumnos.txt')
notas.each_with_index do |alumnos,b|
  alumnos.each_with_index do |detalles,i|
    if i!=0
      alumnos[i]=detalles.to_i
    end
    notas[b]=alumnos
end
end
puts ' '
notas.each_with_index do |alumnos,b|
  alumnos.each_with_index do |detalles,i|
    if i!=0
      alumnos[i]=detalles.to_i
    end
    notas[b]=alumnos
end
end
puts 'Menu de Opciones'
puts 'Opcion 1 - Promedio Notas'
puts 'Opcion 2 - Ver cantidad de Ausencias'
puts 'Opcion 3 - Alumnos Aprobados '
puts 'Opcion 4 - Salir'
puts 'Ingrese opcion numero:'
opcion = gets.chomp.to_i
if opcion != 4
  puts 'Menu de Opciones'
  puts 'Opcion 1 - Promedio Notas'
  puts 'Opcion 2 - Ver cantidad de Ausencias'
  puts 'Opcion 3 - Alumnos Aprobados '
  puts 'Opcion 4 - Salir'
      if opcion== 1
        suma=0
        suma2=0
        suma3=0
        suma4=0
        promedio=0
        notas.each_with_index do |alumnos,b|
         if b==0
            alumnos.each_with_index do |detalles,i|
              if i!=0 and i<6
                suma+=detalles
              end
            end
            puts "Promedio de #{notas[b][0]}"
            puts p1=suma.to_f/5
          end
          if b==1
             alumnos.each_with_index do |detalles,i|
               if i!=0 and i<6
                 suma2+=detalles
               end
             end
             puts "Promedio de #{notas[b][0]}"
             puts p2=suma2.to_f/5
           end
           if b==2
              alumnos.each_with_index do |detalles,i|
                if i!=0 and i<6
                  suma3+=detalles
                end
              end
              puts "Promedio de #{notas[b][0]}"
            puts p3=suma3.to_f/5
            end
            if b==3
               alumnos.each_with_index do |detalles,i|
                 if i!=0 and i<6
                   suma4+=detalles
                 end
               end
               puts "Promedio de #{notas[b][0]}"
               puts p4=suma4.to_f/5
           end
        end
      end
    if opcion==2
      inasistencia=0
      inasistencia1=0
      inasistencia2=0
      inasistencia3=0
        notas.each_with_index do |alumnos,b|
       if b==0
          alumnos.each_with_index do |detalles,i|
            if detalles==0
              inasistencia+=1
            end
          end
          puts "El numero de inasistencias de #{notas[b][0]} son:"
          puts inasistencia
        end
        if b==1
           alumnos.each_with_index do |detalles,i|
             if detalles==0
               inasistencia1+=1
             end
           end
           puts "El numero de inasistencias de #{notas[b][0]} son:"
           puts inasistencia1
         end
         if b==2
            alumnos.each_with_index do |detalles,i|
              if detalles==0
                inasistencia2+=1
              end
            end
            puts "El numero de inasistencias de #{notas[b][0]} son:"
            puts inasistencia2
          end
          if b==3
             alumnos.each_with_index do |detalles,i|
               if detalles==0
                 inasistencia3+=1
               end
             end
             puts "El numero de inasistencias de #{notas[b][0]} son:"
             puts inasistencia3
           end
      end
  end
    if opcion==3
        def aprobados(notas)
          suma=0
         suma2=0
         suma3=0
         suma4=0
         promedio=0
           notas.each_with_index do |alumnos,b|
          if b==0
             alumnos.each_with_index do |detalles,i|
               if i!=0 and i<6
                 suma+=detalles
               end
             end
             puts "Promedio de #{notas[b][0]}"
             puts p1=suma.to_f/5
             if p1>5
               puts 'Alumno aprobado'
             else
               puts 'Alumno reprobo'
             end
           end
           if b==1
              alumnos.each_with_index do |detalles,i|
                if i!=0 and i<6
                  suma2+=detalles
                end
              end
              puts "Promedio de #{notas[b][0]}"
              puts p2=suma2.to_f/5
              if p2>5
                puts 'Alumno aprobado'
              else
                puts 'Alumno reprobo'
              end
            end
            if b==2
               alumnos.each_with_index do |detalles,i|
                 if i!=0 and i<6
                   suma3+=detalles
                 end
               end
               puts "Promedio de #{notas[b][0]}"
             puts p3=suma3.to_f/5
             if p3>5
               puts 'Alumno aprobado'
             else
               puts 'Alumno reprobo'
             end
             end
             if b==3
                alumnos.each_with_index do |detalles,i|
                  if i!=0 and i<6
                    suma4+=detalles
                  end
                end
                puts "Promedio de #{notas[b][0]}"
                puts p4=suma4.to_f/5
                if p4>5
                  puts 'Alumno aprobado'
                else
                  puts 'Alumno reprobo'
                end
            end
         end
        end
        aprobados(notas)
      end
    else
    if opcion==4
      puts 'ha elegido salir'
    else 'Opcion invalida'
    end
end
