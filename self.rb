# Trong ruby, mọi thử đều là object.
# Các object cung cấp ngữ cảnh thực thi cho code.
# Bản chất của việc gọi một method chính là việc gửi message giữa object gửi (the sender)và object nhận (the receiver).
# Và object hiện tại chính là default receiver.
# Khi mà receiver không được định nghĩa, 
# message sẽ được gửi đến default receiver. Đó chính là Self

# tức là currnet Object = default receiver => self
# self ở mưc ngoài cùng chính là main
puts self #=> main
# => nếu ta thực thi các method ở mưc top này thì người nhận chính là main
#self có tính động , tùy thuộc vào nơi nó được gọi (giống như mọi ngôn ngữ khác)
{
    "Top lever" => "main",
    "In a class" => "Class Name",
    "In a module" => "Module Name" ,
    "In a method insided a class" => "Instance of this class",
    "In a method insided a module , if a class included this module" => "Instance of class mixesed this module" ,
    "In a method insided a module , if a class extend this module" => "ClassName mixesed this module",
    "In a class method of a module" => "Module Name",
    "In a class method of a class" => "Class Name"
}