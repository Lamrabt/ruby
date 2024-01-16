puts "choisi un nombre entre 1 et 25"
print "> "
nombre = gets.chomp.to_i
i = 1
espace = nombre

if (nombre > 25)
  puts "Déso le max c'est 25"
elsif (nombre < 1)
    puts "Déso le min c'est 1"
elsif (nombre == 1)
  puts "c'est pas une pyramide ça"
  puts "#"
else
  puts "Oh! une pyramide a l'envers"
while (i <= nombre)
    print " " * (espace)
    puts "#" * (i )
    i += 1
    espace -= 1
  end
end

  