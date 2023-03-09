class Dragon
    attr_reader :name, :color, :rider
    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @hungry = true
        @num_eats = 0
    end

    def hungry?
        @hungry
    end

    def eat
        @num_eats += 1
            if @num_eats > 2
                @hungry = false
            else
                true
            end
        
    end


end