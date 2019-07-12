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
# puts array.inspect

# square.call(2)



# lambda

# result = lambda do |x|
#     x += 1 
# end

# temp = 2

# puts result.call(temp)
# puts temp

blah = -> {puts 'lambda'}

puts blah.call

# Tóm tắt về bản chất , block với yield cũng chỉ chính là đoạn code thêm vào 1 hàm nào đó ,
# và tình dẻo không bằng so vơi procs và lambda nhưng mà lại mang tới hiệu suất cao hơn
#procs là biến lưu procs => cũng là 1 đoạn code như yield => do đó nếu return trong này sẽ có tác dụng như trong method đó
#Còn vơi lambda bản chât là 1 hàm ẩn danh => dùng để tái xử dụng như yield 
#  nhưng mà vì nó là 1 hàm nên return của nó chỉ có ý nghĩa cho chính bản thân nó