# def print_your_name name 
#     puts "your name is " + name
# end


# print_your_name("haha")



# def    calculate_value (value = 'default' , arr=[])
#     puts value
#     puts arr.sum    
# end

# calculate_value(1 , [2,3])


# def accept_hash (arguments)
#     print "got: " , arguments.inspect  
# end
# accept_hash(2)



# def calculate_value(a,b,c:true,d:false)
#     puts a ,b , c, d
# end
# calculate_value(true,false)


# def method_call 
#     yield 
# end
# method_call{2*4}





# Class method and instance method
class Invoice
    # Class method
    def self.print_out 
        "Printed out invoice"
    end
    # instance method
    def convert_to_pdf
        "Convert to pdf"
    end
end
puts Invoice.print_out
# puts Invoice.convert_to_pdf => make error cause is not a class method  => create a instance to run




