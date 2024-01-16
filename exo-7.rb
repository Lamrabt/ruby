puts "Bonjour, choisi un nombre"
print "> "
nombre = gets.chomp.to_i
i=0
nombre.times do
    puts i+1
    i=i+1
end