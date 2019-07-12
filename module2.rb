# Vì ruby là ngôn ngữ chỉ cho đơn kế thừa nên có thể dùng mixin

module A 
    def a1; end
    def a2; end
end
module B 
    def b1; end
    def b2; end
end
class Sample 
    include A
    include B
    def some_thing
    end
end

sample = Sample.new 
sample.a1
sample.b1
sample.some_thing
