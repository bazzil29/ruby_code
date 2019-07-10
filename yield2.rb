def my_method2 
    age = 20
    yield("phuong" , age)
    puts age
end


# giá trị truyền vào chỉ có giá trị trong block

my_method2 do |name , age|
    age += 1 
    puts "My name is #{name } , I'm #{age} years old"
end


