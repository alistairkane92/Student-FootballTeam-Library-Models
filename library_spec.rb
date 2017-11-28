require ("minitest/autorun")
require ("minitest/rg")

require_relative("./Library.rb")

class Test < MiniTest::Test

    def setup
        @books = {title: "Lord of the Rings", rental_details:{student_name: "Jeff", date: "01/12/16"}},
            {title: "The Slab Boys", rental_details:{student_name: "Louise", date: "05/02/2017"}},
            {title: "Memoirs of a Geisha", rental_details:{student_name: "Bob", date: "02/02/16"}}
        @library = Library.new(@books)
    end

    def test_find_book
        found_book = @library.find_book("Lord of the Rings")
        assert_equal("Lord of the Rings", found_book[:title])
    end

    def test_rental_information
        expected = {student_name: "Jeff", date: "01/12/16"}
        assert_equal(expected, @library.rental_details("Lord of the Rings"))
    end
end
