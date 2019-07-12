begin
    file = open("no_file")
    if file
        puts "Open successfully"
    end
rescue
    file = STDIN
end 
print file  ,"==",STDIN ,"\n"
