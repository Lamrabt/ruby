def add(nombre, number)
    return nombre+number
end
def subtract(nombre, number)
    return nombre-number
end
def sum(array)
    return array.sum
end
def multiply(nombre, number)
    return nombre*number
end
def power (nombre)
    return nombre**nombre
end
def factorial(nombre)
    if nombre <= 0
        return 1
    else
    return (1..nombre).inject(:*)
    end
end