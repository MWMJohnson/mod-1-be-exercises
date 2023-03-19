class Centaur
    attr_accessor :name, :breed, :cranky_run, :standing, :is_sleep, :is_laying, :has_drunk, :has_stick
    def initialize(name, breed, cranky_run: false, standing: true, is_sleep: false, is_laying: false, has_drunk: false, has_stick: false)
        @name = name
        @breed = breed
        @cranky_run = cranky_run
        @standing = standing
        @bows_shot = 0
        @is_sleep = is_sleep
        @is_laying = is_laying
        @has_drunk = has_drunk
        @num_drinks = 0
        @has_stick = has_stick
    end                                                         

    # def shoot
    #     @bows_shot += 1
    #     'Twang!!!'
    # end

    def shoot
        # if @bows_shot > 3
        #     @cranky_shoot = true
        # else 
        #     @cranky_shoot = false
        # end

        if @cranky_run == false && @bows_shot < 3 && @is_laying == false
            @bows_shot += 1
            'Twang!!!'
        elsif @cranky_run == false && @bows_shot = 3 && @is_laying == false
            @num_drinks = 0
            'NO!'
        elsif @cranky_run == false && @bows_shot = 3 && @is_laying == true
            @num_drinks = 0
            'NO!'   
        elsif @cranky_run == true && @bows_shot > 3 && @is_laying == true
            'NO!'
        else 
            'NO!'
        end

    end
        


        # if @cranky = false && @bows_shot < 3
        #     @bows_shot += 1
        #     'Twang!!!'
        # elsif @cranky = false && @bows_shot = 3
        #     @cranky = true
        #     'NO!'
        # else 
        #     @cranky = true 
        #     'NO!'
        # end

        # if @bows_shot >= 3
        #     @cranky = true
        # else
        #     @cranky
        # end
    # end

    def run
        if @is_laying == true
            'NO!'
        else
            @cranky_run = true
            @drink_reset = 0
            'Clop clop clop clop!'
        end

        
    end

    # def cranky?
    #     if @cranky_shoot = false && @cranky_run = false
    #         false
    #     elsif @cranky_shoot = true && @cranky_run = true
    #         true
    #     else
    #         true 
    #     end
    # end

    def cranky?
        if @has_drunk == true || @is_sleep == true
            @cranky_run = false
            @has_drunk = false
        end

        if @drink_reset == true
            @has_drunk2 = true
        end

        

        if @cranky_run == true || @bows_shot >= 3 || @has_drunk2 == true
            true
        else
            false
        end
    end

    def standing?
        @standing
    end

    def sleep
        if @standing == true
            @is_sleep = false
            "NO!"
        else
            @is_sleep = true

        end
    end

    def lay_down
        @standing = false
        @is_laying = true
    end

    def laying?
        @is_laying
    end

    def stand_up
        @standing = true
        @is_laying = false
    end

    def drink!
        # if @has_drunk == true
        #     @has_dru
        # else
        #     "NO!"
        # end
        

        # if @standing == false &
        #     @has_drunk == true
        # elsif @standing == false && @has_drunk == true
        #     @has_stick = true

        if @standing == false || @is_laying == true
            greenlight = false
        else 
            greenlight = true
        end


        if greenlight == true
            @num_drinks += 1
        end

        
        if @num_drinks == 1 && greenlight == true
            @has_drunk = true
        elsif @num_drinks > 1 && greenlight == true
            @has_drunk = true
        elsif @num_drinks <= 0 && greenlight == true
            @has_drunk = false
        else
            "NO!"
        end



        

    end

end
