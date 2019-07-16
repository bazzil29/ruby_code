def yeller(array,&block)
   return (array.map{|item| block.call(item)}).join() 
end

result = ->(character){character.downcase} 

array = ["A" ,"B", "C"]

puts yeller(array,&result)

letters = ['a','b','c','d','e','f','g','h']

def random_subdomain(array_letters)
    return array_letters.shuffle.join
end
puts random_subdomain(letters)