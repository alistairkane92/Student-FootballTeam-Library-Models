class Library

    def initialize(books)
        @books = books
    end

    def list_books
        return @books
    end

    def find_book(name)
        for book in @books
            return book if book[:title] == name
        end
        return nil
    end

    def rental_details(name)
        for book in @books
            if book[:title] == name
                return book[:rental_details]
            end
        end
    end
end
