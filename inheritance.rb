# class Animal
#     def speak
#         "Hello"
#     end
# end


# class GoodDog<Animal
# end

# class Cat<Animal 

# end

# sparky = GoodDog.new
# paws = Cat.new

# puts sparky.speak
# puts paws.speak


# class Animal 
#     def speak
#         "Hello"
#     end
# end

# class GoodDog<Animal
#     attr_accessor :name
#     def initialize value
#         self.name = value
#     end
#     def speak 
#         "#{self.name} says arf!"
#     end

# end
# class Cat<Animal

# end


# sparky = GoodDog.new"Sparky"
# paws = Cat.new

# puts sparky.speak






class GoodDog 
    DOG_YEARS = 7
    attr_accessor:name , :age
    def initialize n,a 
        self.name = n
        self.age = a
    end

    
    private def human_years
             age*DOG_YEARS
    end

    def ok 
    end
end


sparky = GoodDog.new("Sparky" , 4)

# sparky.human_years