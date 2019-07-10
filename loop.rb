# i = 0
# while i <  10 do 
#     puts("inside the loop i = #{i}")
#     i += 1
# end



# i = 0
# begin
#     puts("inside the loop i = #{i}")
#         i += 1
# end while i < 10    

# i = 0
# until i >=10 do
#     puts("inside the loop i = #{i}")
#         i += 1
# end

# i = 0
# begin 
#     puts("inside the loop i = #{i}")
#     i += 1
# end until i >=10





colecttion = [1,2,3,4,5,6]

# colecttion.each do |item| 
#      item**2
# end

# for i in 0..5 do 
#     puts "value of local variable is #{i}"
# end

# (0..5).each do |i|
#     puts "value of local variable is #{i}"
# end


# for i in 0..5 
#     if i > 2 then 
#         break
#     end
#     puts "value of local variable is #{i}"    
# end


# for i in 0..5 
#     if i < 2 then 
#         next
#     end
#     puts "value of local variable is #{i}"    
# end



# for i in 0..5
#     if i < 2 then 
#         puts "value of local variable is #{i}"
#         redo
#     end
# end


# begin
#     puts 1
# rescue   
#     retry 
# end


for i in 0..5
    retry if i == 4 
end
