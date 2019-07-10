puts "Reading celcius tempurature from a file ...."
num = File.read('temp.dat')
celcius = num.to_i
fahrenheit = (celcius * 9/5) + 32
puts "The number is " + num
puts "The fahrenheit is " + fahrenheit.to_s + "." 