def say_hello(first_name)
    puts "hello, #{first_name}!"
  end   
def first_name
    puts "ton nom?"
    print "> "
    nom= gets.chomp
    return nom
end 
def perform
  nom = first_name
  say_hello(nom)
end
perform