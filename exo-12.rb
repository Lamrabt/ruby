puts "Bonjour, quand êtes vous né"
print "> "
nombre = gets.chomp.to_i
age_anné=(2024-nombre)/2 +1
age_anné1=0
i=nombre
age1=2024-nombre
age=(2024-nombre)/2
age.times do
    puts "il y a #{age1 +=-1} ans "  "vous aviez: #{age_anné1} ans"
    i=i+1
    age_anné1=age_anné1+1
end
puts "il y a #{age} ans vous aviez la moitié de votre age aujourd'hui"
age.times do
    puts "il y a #{age +=-1} ans "  "vous aviez: #{age_anné} ans"
    i=i+1
    age_anné=age_anné+1
end
