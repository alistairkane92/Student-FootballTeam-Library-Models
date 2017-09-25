class Student

    def initialize(student_name, cohort, speech, favourite_language)
        @student_name = "Alistair"
        @cohort = 3
        @speech = "I can talk!"
        @favourite_language = "Ruby"
    end


    def name
        return @student_name
    end

    def cohort
        return @cohort
    end

    def change_name(new_name)
        return @student_name = new_name
    end

    def change_cohort(new_cohort)
        return @cohort = new_cohort
    end

    def talk
        return @speech
    end

    def say_fav_language
        return "I love #{@favourite_language}"
    end









end
