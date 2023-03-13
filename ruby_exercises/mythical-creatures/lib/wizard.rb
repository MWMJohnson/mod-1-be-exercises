class Wizard
    attr_accessor :name, :bearded
    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
    end

    def bearded?
        @bearded
    end

    def incantation(message)
        @new_message = "sudo ".concat(message)

    end

end
