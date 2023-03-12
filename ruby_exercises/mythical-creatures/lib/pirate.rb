class Pirate
    attr_accessor :name, :job
    def initialize(name, job = "Scallywag")
        @name = name
        @job = job
        @cursed = false
        @num_heinous_acts = 0
        @booty = 0
    end

    def commit_heinous_act
        @num_heinous_acts += 1
    end

    def cursed?
        if @num_heinous_acts > 2
            @cursed = true
        else
            false
        end
    end

    def booty?
        @booty?
    end

    def steal_a_ship
        @booty += 100
    end

end
