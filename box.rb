class Box
    def initialize w,h
        @width, @height = w,h
        puts "#{@width} ,#{@height}"
    end
    def get_width 
        return @width
    end
    def printWidth
        @width 
    end
    def printHeight
        @height
    end
    def setWidth value
        @width = value
    end
    def setHeight value
        @height = value
    end

    # some instance methods
    def getArea
        return @width*@height
    end


    def self.hello (something)
        @@something = something
        if something
            puts something.to_s + " Hello world!"
        else
            puts "Notthing to say hello!"
        end
    end
end

x = Box.new(10,20)
puts x.get_width


puts "This is width of the box " + x.printWidth().to_s
puts "This is height of the box " + x.printHeight().to_s

x.setHeight(100)
x.setWidth(10)
puts "This is width of the box " + x.printWidth.to_s
puts "This is height of the box" + x.printHeight.to_s

puts  "The area of this bos is " + x.getArea.to_s

Box.hello("hihi")


