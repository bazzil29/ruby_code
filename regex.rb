# if "Do you like cats?".match(/like/)
#     puts "Match found!"
# end
# puts "Do you like cats?" =~ /like/ #=> return the first index if found

# def contains_vowel (str)
#     str =~ /[oiuea]/
# end

# puts contains_vowel("hhhh").inspect
# puts contains_vowel("this a sample hihi").inspect

# def contains_number (str)
#     str =~ /[0-9]/
# end
# puts contains_number("Test 1")
# puts contains_number("Test test")




# If we don't escape, the letter will match
puts "5a5".match(/\d.\d/)

# In this case only the literal dot matches
puts "5a5".match(/\d\.\d/) # nil
puts "5.5".match(/\d\.\d/) # match