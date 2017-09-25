require ("minitest/autorun")
require ("minitest/rg")

require_relative("./part_c.rb")

class Test < MiniTest::Test

    def test_list_books
        library = Library.new([   {title: "Lord of the Rings", rental_details:   {student_name: "Jeff", date: "01/12/16"}   },
            {title: "The Slab Boys", rental_details:{student_name: "Louise", date: "05/02/2017"}   }, { title: "Memoirs
            of a Geisha", rental_details:{student_name: "Bob", date: "02/02/16"}  }  ])

        assert_equal( [  {title: "Lord of the Rings", rental_details:  {student_name: "Jeff", date: "01/12/16"}  },
            {title: "The Slab Boys", rental_details:{student_name: "Louise", date: "05/02/2017"}   }, {title: "Memoirs
            of a Geisha", rental_details:{student_name: "Bob", date: "02/02/16"}  }  ], library.list_books)
    end

    def test_return_book_info
        library = Library.new([   {title: "Lord of the Rings", rental_details:   {student_name: "Jeff", date: "01/12/16"}   },
            {title: "The Slab Boys", rental_details:{student_name: "Louise", date: "05/02/2017"}   }, { title: "Memoirs
            of a Geisha", rental_details:{student_name: "Bob", date: "02/02/16"}  }  ])


        assert_equal({title: "Lord of the Rings", rental_details:{student_name: "Jeff", date: "01/12/16"}},
            library.find_book("Lord of the Rings"))
    end

    def test_return_rental_information
        library = Library.new([   {title: "Lord of the Rings", rental_details:   {student_name: "Jeff", date: "01/12/16"}   },
            {title: "The Slab Boys", rental_details:{student_name: "Louise", date: "05/02/2017"}   }, { title: "Memoirs
            of a Geisha", rental_details:{student_name: "Bob", date: "02/02/16"}  }  ])


        assert_equal({student_name: "Jeff", date: "01/12/16"},
            library.rental_details("Lord of the Rings"))
    end

    









end
