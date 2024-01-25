def is_multiple_of_3_or_5?(n)
    if n % 3 == 0 || n % 5 == 0
        return true
    else 
        return false 
    end
end
def sum_of_3_or_5_multiples(final_number)
    if final_number.is_a?(Integer) == false || final_number < 0
        return "Yo ! Je ne prends que les entiers naturels. TG"
    end
    current_number = 0
    final_sum = 0 #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro
    while current_number < final_number
        # Ici, lance une boucle qui va de zéro au chiffre "final_number" EXCLU (car on est sur du strictement inférieur)
        # cette boucle indente à chaque tour une variable (par exemple "current_number") qui vaudra 0 puis 1 puis 2 ... etc.
        if is_multiple_of_3_or_5?(current_number)
            
            final_sum = current_number + final_sum# si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".

        end
        current_number = current_number +1
    end
    return final_sum #on retourne la variable qui contient la somme du tout
end