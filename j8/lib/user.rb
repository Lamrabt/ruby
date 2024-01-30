require "pry"

class User
    attr_accessor :email, :age
    @@all_user = []
    def initialize(email_to_save, age_to_save)
        @email = email_to_save
        @age = age_to_save
        @@all_user << self
        puts "Voici ton age et adress mail"
    end
    def self.all
        @@all_user
    end
    def self.find_by_email(email)
        @@all_user.find { |user| user.email == email }
    end
end

binding.pry
puts "end of file"