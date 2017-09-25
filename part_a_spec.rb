require ("minitest/autorun")
require ("minitest/rg")

require_relative("./part_a.rb")

class Test < MiniTest::Test


    def test_name
        student = Student.new("Alistair", 3, "Hello", "Ruby")

        assert_equal("Alistair", student.name())
    end

    def test_cohort
        student = Student.new("Alistair", 3, "Hello", "Ruby")

        assert_equal(3, student.cohort())
    end

    def test_set_update_student_name
        student = Student.new("Alistair", 3, "Hello", "Ruby")

        student.change_name("Peter")

        assert_equal("Peter", student.name())
    end

    def test_set_update_cohort
        student = Student.new("Alistair", 3, "Hello", "Ruby")

        student.change_cohort(4)

        assert_equal(4, student.cohort())
    end

    def test_talk
        student = Student.new("Alistair", 3, "Hello", "Ruby")

        assert_equal("I can talk!", student.talk())
    end

    def test_favourite_language()
        student = Student.new("Alistair", 3, "Hello", "Ruby")

        student.say_fav_language()

        assert_equal("I love Ruby", student.say_fav_language)
    end
end
