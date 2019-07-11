# A Hash is a collection of key-value pairs
# Mảng băm là 1 tập hợp căc cặp giá trị key-value

# It is similar to an Array, except that indexing is done via arbitrary keys of any
# object type, not an integer index
# Tương tự như array , chỉ khác là đánh  chỉ só là một giá trị ngâũ nhiện , không phải là số nguyên 

# Hashes enumerate their values in the order that the corresponding keys were
# inserted
# Mảng băm liệt kê các giá trị theo các giá trị khóa tương ứng được chèn

# Hashes have a default value that is returned when accessing keys that do not
# exist in the hash. By default, that value is nil
#Mảng băng có giá trị ngẫu nhiên là nil , trả về nếu khóa để  tìm kiêm không match với giá trị nào


# Tóm tăt bản chất của Hash trong ruby là mông mảng(bản dồ tử điển các giá trị) 
# tương Tự như mảng , nhưng thay vì đánh chỉ mục bằng các số nguyên 
# thì Hash có các chỉ mục là bất kỳ giá trị nào (string , object , array ,hash  .... 
# thường thì sẽ để là string => các chỉ mục đó trong hash sẽ là symbol)

# puts h = Hash.new
# puts h1  = Hash.new
# puts h2 = Hash.new("a")
# puts h2["a"]




months = Hash.new("month")
# nếu không bắt được chỉ mục thì sẽ trả về giá trị mặc định
# => month
puts months[21] 



# Một số cách tạo Hash 
books = {}
books[:this_is_an_index] = "This is a value"
books[:this_is_another_index] = "This is another value"

puts books.inspect
puts books.values
puts books.keys
# các public methods tạo Hash
# Hash[key,value,...]
puts Hash[{a:1},1 , 1,2]
# Hash[[[key,value],[key,value]...]] this is a clear way to declear a hash
puts Hash[[[1,2],[1,2], [2,1]]]
# Hash[object] so 
puts Hash[1=>1,4=>2]
# Method converts object to hash => try to convert .if not return a nil
puts Hash.try_convert({"hehe"=>2}).inspect
puts Hash.try_convert("{ahhi=>1}").inspect

# comparing hashs
 puts books == months
#so sánh cha con 
h1 = {a:1, b:2}
h2 = {a:1, b:2, c:3}
puts h1>h2
puts h1<h2
puts h1>h1# note


# return a key-value pair with (assoc)
assoc_hash = {1=>[1,2,3,4],"haha"=>[2,3,4,5]}
puts  assoc_hash.assoc(1)

# clear all key-value pairs
puts assoc_hash.clear()


#delete key-value  
delete_hash = {1=>[1,2,3,4],"haha"=>[2,3,4,5] , 2=>[1,1,1] , "x" => 100}
# puts (delete_hash.delete(1)do |key|
#     puts key.inspect
#     if(key == 2)
#         return true
#     return false 
#     end
#     end).inspect
# puts delete_hash


# delete_if{|key, value| block} -> hash
puts (delete_hash.delete_if()do |key, value|
    (key=="x"?(value==101?true:true):false) 
end).inspect


# truy cap dung method each

h = { "a" => 100, "b" => 200 }

h.each do |key , value|
    puts "#{key},#{value}"
end




#empty?
a = {2=>1}
puts a.empty?

puts a.has_key?(1)
puts a.has_key?(2)

puts a.include?()

