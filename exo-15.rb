puts "choisi un nombre entre 1 et 25"
print "> "
nombre= gets.chomp.to_i
i = 1
etage = "#"
if (nombre > 25)
  puts "déso le max c'est 25"
elsif (nombre < 1)
    puts "Déso le min c'est 1"
elsif (nombre == i)
  puts "c'est pas une pyramide ça"
else
  puts "Oh! une piramide"
while (i <= nombre)
    
    puts "#" * (i)
    i += 1
  end
end

  