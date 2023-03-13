class Wizard
    attr_accessor :name, :bearded, :rested
    def initialize(name, bearded: true, rested: true)
        @name = name
        @bearded = bearded
        @rested = rested
        @num_casts = 0
    end

    def bearded?
        @bearded
    end

    def incantation(message)
        @new_message = "sudo ".concat(message)
    end

    def rested?
        if @num_casts >= 3
            @rested = false
        else 
            @rested = true
        end

    end

    def cast 
        @num_casts += 1
        "MAGIC MISSLE!"
    end

end

