# https://viblo.asia/p/block-trong-ruby-wjAM7yNOvmWe
def my_method 
    puts "Reached the top "
    yield 
    puts "Reached the bottom"
end

# Cũng như các bạn đã thấy, 
# Nếu bạn đặt yield trong thân hàm của bạn thì khi gọi method 
# nó sẽ mong đợi một block truyền vào để thực thi.


my_method do 
    puts "reached yield"
end

# Nếu bạn không truyền vào block mà yield 
# mong muốn Ruby sẽ bắn ra một ngoại lệ và kết thục phương thức.

# my_method




