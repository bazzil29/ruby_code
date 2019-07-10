print "Enter celcius tempaturate " 
celcius = gets.to_i
fahrenheit  = celcius*9/5 + 32
fh = File.new("temp.out", "w")
puts "saving out put in , temp.out file"
fh.puts fahrenheit
fh.close