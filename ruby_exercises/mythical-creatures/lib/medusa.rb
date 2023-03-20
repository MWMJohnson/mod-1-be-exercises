class Medusa
    attr_accessor :name, :statues
    def initialize(name)
        @name = name
        @statues = []
        
    end

    def statues
        @statues
    end

    def stare(name)
        @statues << name
    end

end

class Person
    attr_accessor :name, :statues
    def initialize(name)
        @name = name
        @stones = []
    end

    def stoned?
        stones = @statues
        @stones << stones
        if @stones.include?(name)
            true
        else
            false
        end
    end

end


