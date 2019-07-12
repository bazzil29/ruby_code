# include as a instance method

# module Hihi
#      callback
    # def self.include(base)
    #     puts  "this is a callback of #{self} called from #{base}"
    # end
#     def speak
#         "Hehehe :))))) my friend"
#     end
# end


# class Oscar
#     include Hihi
# end

# class Pizzon
#     include Hihi
# end

# puts (Oscar.new).speak
# puts (Pizzon.new).speak


#extend as a Class method

module Hihi
    #callback
    def self.extended(base) 
        puts "this is a callback of #{self} called from #{base}"
    end
    #class method
    def speak 
        "Hehehe :))))) my friend"
    end
end


class Oscar
end

class Pizzon
    extend Hihi
end

puts (Oscar.new.extend(Hihi)).speak #chỉ có extend mới có thể bắt trước trực tiếp từ 1 instance như vậy, còn include không thể
puts Pizzon.speak


#cách sử dụng class method và instance methods cùng 1 lúc tham khảo tại đây 
#https://viblo.asia/p/lam-viec-voi-module-mixin-trong-ruby-WAyK8pA9KxX