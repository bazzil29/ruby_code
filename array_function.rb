array = [1,2,3,4,5,6,7,8]

#each , như map nhưng luôn trả lại mảng ban dầu
# map trả về  1 mảng mới đi cùng với phép toán trong blocks
# puts (array.map do |item|
#     item**2 
# end).inspect


#collect , gần như tương tự với map
# puts (array.collect do |item|
#     item**2 
# end).inspect

#select  , trả về mảng các phân tử thỏa mãn điều kiện , hoặc trả về  mang cũ nếu trong block là biểu thức
# puts (array.select do |item|
#     item > 2
#         # item**2
# end).inspect




#inject , lần lượt các phần tử của mảng sẽ là tham số  => biến số  => để ta có thể tính toán lần lượt 
# puts (array.inject do |sum,e|
#     puts sum 
#     sum += e
# end)


#detect trả về phần tử đâu tiên của mảng thỏa mãn điều kiện , nếu không có điêu kiện thì nó sẽ trả về phần tử đầu tiên của mảng

puts array.detect{|item| item > 6  }