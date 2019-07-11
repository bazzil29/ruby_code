# $global = 0 
# class C 
#     puts "In my class:#{$global}"
#     def my_method 
#         puts "in my method : #{$global}"
         
#         $global +=1
#         $other_global = 3

#     end
# end
# C.new.my_method
# puts "at top level , $global : #{$global} , $other_global #{$other_global}"

# color = 'red'
# def method1
#     color = 192
#     puts("Color Value method 1", color)
# end
# def method2
#     color = 255
#     puts("Color Value method 2", color)
# end
# method1 
# method2
# method1




# class Student 
#     def initialize student_id , student_name 
#         @student_id = student_id
#         @student_name = student_name
#     end
#     def show 
#         puts "Student  Name and ID :"
#         puts @student_name ,@student_id
#     end
# end


# Student.new(1,"Sara").show
# Student.new(0,"Raju").show

class School 
    @@no_off_students = 80
end

class V < School 
    @@no_off_students = 75
end

class Y <School 
    @@no_off_students = 70
end


puts School.class_eval("@@no_off_students")
puts V.class_eval("@@no_off_students")
puts Y.class_eval("@@no_off_students")





# x = 0 
# 3.times do 
#     x += 1
# end
# puts x

# y = 0
# 3.times do 
#     y +=1
#     x = y
# end
 
