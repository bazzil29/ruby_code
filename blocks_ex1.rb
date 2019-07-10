strings = ["a" , "b ","c"]
result = lambda{|e| return e.to_s.upcase}
def convert (strings , &code)
    convert_strings = []
    strings.each_with_index do |e,i|
        convert_strings.push(code.call(e))
    end
    return convert_strings
end

puts convert(strings,&result).inspect

