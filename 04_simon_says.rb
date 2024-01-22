def echo(mot)
    return mot
end
def shout(mot)
    return mot.upcase
end 
def repeat(mot, nombre)
    return foo = [mot] * nombre * " "
end
def start_of_word(mot, nombre)
    return mot[0..nombre-1]
end
def first_word(mot)
    return mot.split.first
end
def titleize(mot)
    no_cap = ["and", "or", "the", "to", "the", "a", "but"]
    return mot.capitalize.split(" ").map { |word| no_cap.include?(word) ? word : word.capitalize }.join(" ")
  end
