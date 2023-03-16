class Werewolf
    attr_reader :name, :location, :human, :wolf, :hunger, :victim, :victims_consumed
    def initialize(name, location = "Denver", human: true, wolf: false, hunger: false)
        @name = name
        @location = location
        @human = human
        @wolf = wolf
        @num_changes = 0
        @hunger = hunger
        @victims_consumed = 0
        @victim = Victim.new 
    end

    def human?
        @human
    end
    
    def wolf?
        @wolf
    end

    def change!
        @num_changes += 1

        if @num_changes.odd?
            @human = false
            @wolf = true
            @hunger = true
        else
            @human = true
            @wolf = false
            @hunger = false
        end
    end

    def hungry?
        @hunger
    end

    def consume!
        if @wolf == true
            @status = :dead
            @victims_consumed += 1
            @hunger = false
        elsif @wolf == false && @victims_consumed > 0
            @status = :dead
            @hunger = false
        else
            @status = :alive
        end

    end

    def status?
        return :dead if victims_consumed > 0
        :alive
    end

    def eaten?
        @victims_consumed
    end

  



end
