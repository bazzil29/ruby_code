def my_method (&block)
    # trẩ về một địa chỉ lưu block này
    puts block 

    block.call
end

my_method { puts "hello"}
