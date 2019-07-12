    module Warmup
        def push_up
            "Phew, I need a break!"
        end
    end

    class Gym
        include Warmup
        def preacher_up
            "I'm building my biceps."
        end
    end

    class Dojo
        include Warmup
        def tai_kyo_kyu
            "Look at my stance!"
        end
    end


    puts Gym.new.push_up
    puts Dojo.new.push_up

    puts BasicObject.superclass
