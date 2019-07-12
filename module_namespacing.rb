# module  Perimeter 
#     class Array
#         def initialze
#             @size = 400
#         end
#     end
# end

# our_array = Perimeter::Array.new
# ruby_array = Array.new

# puts our_array.class
# p ruby_array.class




module Dojo
    A = 4
    module Kata
        B = 8
      module Roulette
        class ScopeIn
          def push
            15
          end
        end
      end
    end
  end
  
  A = 16
  B = 23
  C = 42
  
  puts "A - #{A}"
  puts "Dojo::A - #{Dojo::A}"
  
  puts
  
  puts "B - #{B}"
  puts "Dojo::Kata::B - #{Dojo::Kata::B}"
  
  puts
  
  puts "C - #{C}"
  puts "Dojo::Kata::Roulette::ScopeIn.new.push - #{Dojo::Kata::Roulette::ScopeIn.new.push}"
  