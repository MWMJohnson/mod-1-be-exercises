class Hobbit
    attr_accessor :name, :disposition, :age
    def initialize(name, disposition = "homebody")
        @name = name
        @disposition = disposition
        @age = 0
        @has_ring = assign_ring_on_creation
        @is_short = true
    end

    def assign_ring_on_creation
        return true if @name.downcase == "frodo"
        false
    end

    def  adult?
        return true if age >32
        false
    end

    def celebrate_birthday
        @age += 1
    end

    def old?
        return true if age >100
        false
    end
    
    def has_ring?
        @has_ring
    end  

    def is_short?
        @is_short
    end



end

