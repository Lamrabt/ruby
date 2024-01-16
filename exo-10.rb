puts "Bonjour, choisi un nombre"
print "> "
nombre = gets.chomp.to_i
age_anné=0
age= 2024-nombre
age.times do
    puts "En #{nombre}"  " vous avez:#{age_anné} ans"  
    nombre=nombre+1
    age_anné=age_anné+1
end