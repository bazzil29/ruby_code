# blocks
# class Array 
#     def iterate! 
#          self.each_with_index do |n, i|
#             self[i] = yield(n)
#          end
#     end
# end

# array = [1,2,3,4]
# array.iterate! do |n|
#     n**2
# end

# puts array.inspect



# procs

class Array 
    def iterate! (&code) 
         self.each_with_index do |n, i|
            self[i] = code.call(n)
         end
    end
end

array = [1,2,3,4]
# array.iterate! do |n|
#     n**2
# end


# store procs

square = Proc.new  do |n|
    n**2
end
 array.iterate!(&square)
puts array.inspect

# square.call(2)
