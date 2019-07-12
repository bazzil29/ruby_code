class Animal
    def a_public_method 
        "Will this work?" + self.a_protected_method
    end
    protected def a_protected_method
        "Yes , I'm protected!"
    end
end

an_animal = Animal.new

puts an_animal.a_public_method
puts an_animal.a_protected_method

