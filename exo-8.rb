puts "Bonjour, choisi un nombre"
print "> "
nombre = gets.chomp.to_i+1
nombre.times do
    puts nombre +=-1
end