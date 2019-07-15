#DRY => don't repeat your self
#writing code to code

class CarModel 
    FEATURES = ['engine' , 'wheel', 'airbag' ,'alarm' ,'stereo']
    FEATURES.each do |feature| 
        define_method("#{feature}_info=") do |info|
        instance_variable_set("@#{feature}_info",  info)
        end
        define_method("#{feature}_info") do
            instance_variable_get("@#{feature}_info")
        end
        define_method "#{feature}_price" do
            instance_variable_get("@#{feature}_info")
        end
        define_method("#{feature}_info=") do |info|
            instance_variable_set("@#{feature}_info", info)
        end
    end 
end 

#to shorty this syntax  , we use attr_accessor :name_instance_accessor_variable , :other , :...


class CarModel1
    attr_accessor :engine_info , :wheel_info , :airbag_info , :stereo_info ,
    :engine_price , :wheel_price , :airbag_price , :stereo_price 
end

# => simple using

class CarModel2
    def self.features(*args)
        args.each do |feature| 
            attr_accessor "#{feature}_info" , "#{feature}_price"
        end
    end

    features :haha , :hihi
end

#ruby object model 
#note => khi gọi 1 method của 1 object thì interpreter sẽ find method trong 
# instance methods list nếu tìm được sẽ thực thi
# => nếu không tìm thấy sẽ tìm lên các super class cao hơn => cuối cùng là Object của chính nó , nêu không thể tìm thấy 
#thì nó sẽ quay trở lại object để gọi method_missing() và trả về lỗi NoMethodError


class MyGhostClass
    def method_missing(name , *args)
        puts "#{name} method is missed , #{name} is called with : #{args.join(',')}"
    end
end


m = MyGhostClass.new

m.yeah('haha', 'hihi')

