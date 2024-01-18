def signup
    puts "Entrer un mot de passe"
    print "> "
    mdp = gets.chomp.to_i
    return mdp
  end
  
def login(signup)
    mdp = signup
    puts "Confirme le mot de passe"
    print "> "
    confmdp = gets.chomp.to_i
        while confmdp !=mdp
            puts "mot de passe incorrecte"
            confmdp = gets.chomp.to_i
        end
    puts "mot de passe bon"
end
def acceuil
puts "welcome"
end


def perform
    login(signup) 
    acceuil
end
perform