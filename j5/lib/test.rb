class Caesar
    @@UPPERCASE_LETTERS = ("A".."Z").to_a #Uses the range to create the uppercase letters and converts it to an array
    @@LOWERCASE_LETTERS = ("a".."z").to_a #Uses the range to create the lowercase letters and converts it to an array
  
    attr_accessor :key #This allows us to get and set the key without creating methods
  
    def initialize(key)
      #The constructor recieves the key on initialization
      @key = key #The key is then made an instance variable which makes it accessible
    end
  
    def encrypt(text)
      #This method handles the encryption of the text
      encrypted = "" #This is the variable which will hold the encrypted text
      text.split("").to_a.each do |x| #Converts the text into an array an iterate over each index
        if @@UPPERCASE_LETTERS.include? x #We then check if the current variable is included in the UPPERCASE array
          encrypted += @@UPPERCASE_LETTERS[ (@@UPPERCASE_LETTERS.index(x) + key) % 26] #We then find it's index and add the key to it
        elsif @@LOWERCASE_LETTERS.include? x
          encrypted += @@LOWERCASE_LETTERS[ (@@LOWERCASE_LETTERS.index(x) + key) % 26]
        else
          encrypted += x
        end
      end
      return encrypted
    end
  
  
    def decrypt(text)
      #This method is responsible for decrypting the encrypted text
      decrypted = "" #This variable will hold the decrypted text
      text.split("").to_a.each do |x|
        if @@UPPERCASE_LETTERS.include? x
          decrypted += @@UPPERCASE_LETTERS[ (@@UPPERCASE_LETTERS.index(x) - key) % 26]
        elsif @@LOWERCASE_LETTERS.include? x
          decrypted += @@LOWERCASE_LETTERS[ (@@LOWERCASE_LETTERS.index(x) - key) % 26]
        else
          decrypted -= x
        end
      end
      return decrypted
    end
end
cipher = Caesar.new(5)
puts cipher.encrypt("Sentence") 
puts cipher.decrypt("Xjsyjshj")