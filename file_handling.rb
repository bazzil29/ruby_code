    # my_file = File.new("simeple_file.txt","w+")
    # khi đi vơi file open
    # r read only w+ w ovverwrites , a appending ,a+  read + write at the end of the file 
    # my_file.close() 
    # open file 
    
    # lấy ra toàn bộ file
    # File.read("file_name")

    # lấy ra toàn bộ file nhưng chia thành mảng các dòng
    # File.readlines("file_name")


    # sample = File.open("simeple_file.txt","w+")
    # sample.puts "another example of writing to a file."
    # sample.close
    # puts File.read("simeple_file.txt")


    # delete file
    # File.delete("file_name")


    10.times do 
        sleep 1 
        puts "Record saved ..."
        File.open("server.log","a") do |f|
            f.puts "Server started ar: #{Time.new}"
        end
    end

