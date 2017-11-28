class Student

    def initialize(student_name, cohort)
        @student_name = student_name
        @cohort = cohort
    end

    def name()
        return @student_name
    end

    def cohort()
        return @cohort
    end

    def change_name(new_name)
        return @student_name = new_name
    end

    def change_cohort(new_cohort)
        return @cohort = new_cohort
    end

    def talk()
        return "I can talk!"
    end

    def say_fav_language(language)
        return "I love #{language}"
    end
end
