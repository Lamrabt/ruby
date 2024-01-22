def who_is_bigger(a,b,c)
    if a == nil || b == nil || c == nil
        return "nil detected"
    end
    if a==[a, b, c].max
        return "a is bigger"
    end
    if b==[a, b, c].max
        return "b is bigger"
    end
    if c==[a, b, c].max
        return "c is bigger"
    end
end
def reverse_upcase_noLTA(mot)
    return mot.reverse.upcase.delete("LTA")
end
def array_42(array)
    array.include?(42)
end
def magic_array(array)
    return array.flatten.sort.map{|e| e*2}.delete_if{ |n| n % 3 == 0}.uniq
end