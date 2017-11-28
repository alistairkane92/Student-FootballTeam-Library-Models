require ("minitest/autorun")
require ("minitest/rg")

require_relative("./Student.rb")

class Test < MiniTest::Test

    def setup()
        @student = Student.new("Alistair", 3)
    end

    def test_name
        assert_equal("Alistair", @student.name())
    end

    def test_cohort
        assert_equal(3, @student.cohort())
    end

    def test_set_update_student_name
        @student.change_name("Peter")
        assert_equal("Peter", @student.name())
    end

    def test_set_update_cohort
        @student.change_cohort(4)
        assert_equal(4, @student.cohort())
    end

    def test_talk
        assert_equal("I can talk!", @student.talk())
    end

    def test_favourite_language()
        assert_equal("I love Ruby", @student.say_fav_language("Ruby"))
    end
end
